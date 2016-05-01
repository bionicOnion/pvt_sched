function procs = runSchedulerSimulation(numProcesses, simulationLength, varargin)
%runSchedulerSimulation Simulate the use of the PVT Scheduler
%
%   runSchedulerSimulation(numProcesses, simulationLength, varargin)
%
%   This function generates a set of processes (specified by numProcesses),
%     then simulates process secheduling with those processes using the
%     parameters specified by the user (or default values if none are
%     provided). When the simulation is complete, the process struct will
%     be returned so that users can perform any relevant analysis on it.
%
%   numProcesses:       The number of processes for which simulation should
%                         be performed
%   simulationLength:   The length (in milliseconds) of the simulation
%   weight:             The weighting to be applied between process
%                         liveness and priority (default is 0.25)
%   length:             The desired span covered for every calculation of
%                         the timeslice vector (default is 100)
%   priorityMode:       The mode for selecting process priorities. The
%                         default mode is 'random', which will sample
%                         priorities from the range 1-10, but 'uniform'
%                         (for which all priorities will be 0) and
%                         'ascending' (for which priorities will go from 1
%                         to numProcesses) are also available options
%
%   The process struct contains the following fields:
%       count:          The total number of processes being simulated
%       lastRuns:       The times at which the processes within the struct
%                         finished their last timeslice (initialized to
%                         zeros at the start of the simulation)
%       priorities:     The scheduling priorities used in the simulation
%       maxPriority:    The maximum value in the priorities vector
%       numTimeSlices:  The total number of times that a given process has
%                         been scheduled
%       runTimes:        The total alloted running time for a given process

    % Set scheduling weighting
    if nargin >= 3 && ~isempty(varargin{1})
        weight = varargin{1};
    else
        weight = 0.25;
    end
    
    % Set timeslice vector target length
    if nargin >= 4 && ~isempty(varargin{2})
        length = varargin{2};
    else
        length = 100;
    end
    
    % Set process priority mode
    if nargin >= 5 && ~isempty(varargin{3})
        priorityMode = varargin{3};
    else
        priorityMode = 'random';
    end
    
    % Generate process priorities
    if strcmp(priorityMode, 'uniform')
        priorities = zeros(numProcesses,1);
    elseif strcmp(priorityMode, 'ascending')
        priorities = (1:numProcesses)';
    elseif strcmp(priorityMode, 'random')
        priorities = ceil(rand(numProcesses,1)*10);
    else
        error('pvt_sched:runSchedulerSimulator:invalidPriorityMode', ...
            'The specified priority mode "%s" was not recognized', priorityMode);
    end
    
    % Generate the process struct
    procs = struct('count', numProcesses);
    procs.lastRuns = zeros(numProcesses,1);
    procs.priorities = priorities;
    procs.maxPriority = max(priorities);
    procs.numTimeSlices = zeros(numProcesses,1);
    procs.runTimes = zeros(numProcesses,1);
    
    % Run the simulation
    currTime = 0;
    while currTime < simulationLength
        % Solve for the best timeslice/associated process
        timeslices = generateTimesliceVector(procs, currTime, weight, length);
        [maxSlice, bestProc] = max(timeslices);
        sliceTime = ceil(maxSlice);
        
        % Update process timing values
        currTime = currTime + sliceTime;
        if currTime > simulationLength
            sliceTime = sliceTime - (currTime - simulationLength);
            currTime = simulationLength;
        end
        procs.lastRuns(bestProc) = currTime;
        
        % Perform stat accounting
        procs.numTimeSlices(bestProc) = procs.numTimeSlices(bestProc) + 1;
        procs.runTimes(bestProc) = procs.runTimes(bestProc) + sliceTime;
    end
end

