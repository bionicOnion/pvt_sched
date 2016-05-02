% Generate random/top values
fprintf('Generating random/top values...');
procs_rand_top_1 = runSchedulerSimulation(5, 1000, [],[], 'random', 'top');
procs_rand_top_2 = runSchedulerSimulation(5, 1000, [],[], 'random', 'top');
procs_rand_top_3 = runSchedulerSimulation(5, 1000, [],[], 'random', 'top');
procs_rand_top_4 = runSchedulerSimulation(5, 1000, [],[], 'random', 'top');
procs_rand_top_5 = runSchedulerSimulation(5, 1000, [],[], 'random', 'top');

% Generate random/topThird values
fprintf('Generating random/topThird values...');
procs_rand_topThird_1 = runSchedulerSimulation(5, 1000, [],[], 'random', 'topThird');
procs_rand_topThird_2 = runSchedulerSimulation(5, 1000, [],[], 'random', 'topThird');
procs_rand_topThird_3 = runSchedulerSimulation(5, 1000, [],[], 'random', 'topThird');
procs_rand_topThird_4 = runSchedulerSimulation(5, 1000, [],[], 'random', 'topThird');
procs_rand_topThird_5 = runSchedulerSimulation(5, 1000, [],[], 'random', 'topThird');

% Generate random/thresh values
fprintf('Generating random/thresh values...');
procs_rand_thresh_1 = runSchedulerSimulation(5, 1000, [],[], 'random', 'thresh');
procs_rand_thresh_2 = runSchedulerSimulation(5, 1000, [],[], 'random', 'thresh');
procs_rand_thresh_3 = runSchedulerSimulation(5, 1000, [],[], 'random', 'thresh');
procs_rand_thresh_4 = runSchedulerSimulation(5, 1000, [],[], 'random', 'thresh');
procs_rand_thresh_5 = runSchedulerSimulation(5, 1000, [],[], 'random', 'thresh');

% Generate uniform values
fprintf('Generating uniform values...');
procs_uniform_top = runSchedulerSimulation(5, 1000, [],[], 'uniform', 'top');
procs_uniform_topThird = runSchedulerSimulation(5, 1000, [],[], 'uniform', 'topThird');
procs_uniform_thresh = runSchedulerSimulation(5, 1000, [],[], 'uniform', 'thresh');

% Generate ascending values
fprintf('Generating ascending values...');
procs_ascending_top = runSchedulerSimulation(5, 1000, [],[], 'ascending', 'top');
procs_ascending_topThird = runSchedulerSimulation(5, 1000, [],[], 'ascending', 'topThird');
procs_ascending_thresh = runSchedulerSimulation(5, 1000, [],[], 'ascending', 'thresh');

% Generate varying weight values
fprintf('Generating varied weight values...');
procs_weight_0   = runSchedulerSimulation(5, 1000, 0.0, [], 'uniform', 'top');
procs_weight_0_1 = runSchedulerSimulation(5, 1000, 0.1, [], 'uniform', 'top');
procs_weight_0_2 = runSchedulerSimulation(5, 1000, 0.2, [], 'uniform', 'top');
procs_weight_0_3 = runSchedulerSimulation(5, 1000, 0.3, [], 'uniform', 'top');
procs_weight_0_4 = runSchedulerSimulation(5, 1000, 0.4, [], 'uniform', 'top');
procs_weight_0_5 = runSchedulerSimulation(5, 1000, 0.5, [], 'uniform', 'top');
procs_weight_0_6 = runSchedulerSimulation(5, 1000, 0.6, [], 'uniform', 'top');
procs_weight_0_7 = runSchedulerSimulation(5, 1000, 0.7, [], 'uniform', 'top');
procs_weight_0_8 = runSchedulerSimulation(5, 1000, 0.8, [], 'uniform', 'top');
procs_weight_0_9 = runSchedulerSimulation(5, 1000, 0.9, [], 'uniform', 'top');
procs_weight_1   = runSchedulerSimulation(5, 1000, 1.0, [], 'uniform', 'top');

% Generate varying weight values
fprintf('Generating varied timespan values...');
procs_timespan_50   = runSchedulerSimulation(5, 1000, [],   50, 'uniform', 'top');
procs_timespan_100  = runSchedulerSimulation(5, 1000, [],  100, 'uniform', 'top');
procs_timespan_200  = runSchedulerSimulation(5, 1000, [],  200, 'uniform', 'top');
procs_timespan_500  = runSchedulerSimulation(5, 1000, [],  500, 'uniform', 'top');
procs_timespan_1000 = runSchedulerSimulation(5, 1000, [], 1000, 'uniform', 'top');