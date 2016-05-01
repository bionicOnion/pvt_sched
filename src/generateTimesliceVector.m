function [timeslices, unfairness] = generateTimesliceVector(processes, currTime, weight, length)
%generateTimesliceVector Solve the optimization problem to generate a
%   timeslice vector
%
%   Solves a constrained optimization problem based on the provided
%   variables to generate a vector of timeslices (which will sum to the
%   provided length variable). This vector can then be used elsewhere to
%   select the optimal process to schedule next based on whichever policy a
%   user chooses.
%
%   processes:  A struct array representing processes. Each process has the
%               following fields:
%                   count: number of processes
%                   priorities: vector of integer values; higher values imply
%                       higher priority
%                   lastRuns: vector of integer values; time (in milliseconds)
%                       at which a given process last finished executing
%   currTime:   The current time (in milliseconds) at which scheduling is
%               occuring
%   weighting:  The relative weighting to be applied to the two terms on
%               the objective function
%   length:     The desired overall duration of the timeslice vector (e.g.
%               the vector is constrained such that it sums to this value)

    % Perform basic sanity checking on inputs
    if weight < 0 || weight > 1
        error('generateTimesliceVector:weightOutOfBounds', ...
            'The provided weight %f is not in the required range of 0 to 1', weight);
    elseif length <= 0 || mod(length,1) ~= 0
        error('generateTimesliceVector:invalidLength', ...
            'The length of %f is invalid (must be a positive integer', length);
    elseif processes.count <= 0
        error('generateTimesliceVector:noProcesses', ...
            'The process count of %d was lower than the required minimum of 1', processes.count);
    elseif sum(find(currTime < processes.lastRuns)) ~= 0
        error('generateTimesliceVector:invalidTimeSequence', ...
            'One or more processes reported impossible time sequences');
    elseif sum(find(processes.priorities < 0)) ~= 0
        error('generateTimesliceVector:invalidPriority', ...
            'One or more processes reported a negative priority');
    end

    % Generate a single-parameter lambda version of the objective function
    f = @(t)objectiveFunction(t, currTime, weight, length, processes);
    
    % Setup equality constraints such that the timeslice vector sums to the
    % user-specified total length
    eqA = ones(1, processes.count);
    eqB = length;
    
    % Solve for the optimal timeslice values and report the value of the
    % objective function (the unfairness of the selected schedule)
    [timeslices, unfairness] = fmincon(f, zeros(processes.count,1), [], [], eqA, eqB, ...
        zeros(1, processes.count), length*ones(1, processes.count));
end


function objVal = objectiveFunction(t, s, w, m, processes)
    prioritization = sum(processes.priorities.*abs(m - t));
    responsiveness = sum((s - processes.lastRuns)./t);
    
    objVal = w*prioritization + (1-w)*responsiveness;
end