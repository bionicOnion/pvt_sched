% Generate random/top values
fprintf('Generating random/top values...\n');
procs_rand_top_1 = runSchedulerSimulation(5, 1000, [],[], 'random', 'top');
procs_rand_top_2 = runSchedulerSimulation(5, 1000, [],[], 'random', 'top');
procs_rand_top_3 = runSchedulerSimulation(5, 1000, [],[], 'random', 'top');
procs_rand_top_4 = runSchedulerSimulation(5, 1000, [],[], 'random', 'top');
procs_rand_top_5 = runSchedulerSimulation(5, 1000, [],[], 'random', 'top');
figure;
subplot(5,2,1), bar(procs_rand_top_1.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Top, Run 1: Priorities');
subplot(5,2,2), bar(procs_rand_top_1.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Top, Run 1: Run Times');
subplot(5,2,3), bar(procs_rand_top_2.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Top, Run 2: Priorities');
subplot(5,2,4), bar(procs_rand_top_2.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Top, Run 2: Run Times');
subplot(5,2,5), bar(procs_rand_top_3.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Top, Run 3: Priorities');
subplot(5,2,6), bar(procs_rand_top_3.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Top, Run 3: Run Times');
subplot(5,2,7), bar(procs_rand_top_4.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Top, Run 4: Priorities');
subplot(5,2,8), bar(procs_rand_top_4.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Top, Run 4: Run Times');
subplot(5,2,9), bar(procs_rand_top_5.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Top, Run 5: Priorities');
subplot(5,2,10), bar(procs_rand_top_5.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Top, Run 5: Run Times');

% Generate random/topThird values
fprintf('Generating random/topThird values...\n');
procs_rand_topThird_1 = runSchedulerSimulation(5, 1000, [],[], 'random', 'topThird');
procs_rand_topThird_2 = runSchedulerSimulation(5, 1000, [],[], 'random', 'topThird');
procs_rand_topThird_3 = runSchedulerSimulation(5, 1000, [],[], 'random', 'topThird');
procs_rand_topThird_4 = runSchedulerSimulation(5, 1000, [],[], 'random', 'topThird');
procs_rand_topThird_5 = runSchedulerSimulation(5, 1000, [],[], 'random', 'topThird');
figure;
subplot(5,2,1), bar(procs_rand_topThird_1.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Top Third, Run 1: Priorities');
subplot(5,2,2), bar(procs_rand_topThird_1.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Top Third, Run 1: Run Times');
subplot(5,2,3), bar(procs_rand_topThird_2.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Top Third, Run 2: Priorities');
subplot(5,2,4), bar(procs_rand_topThird_2.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Top Third, Run 2: Run Times');
subplot(5,2,5), bar(procs_rand_topThird_3.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Top Third, Run 3: Priorities');
subplot(5,2,6), bar(procs_rand_topThird_3.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Top Third, Run 3: Run Times');
subplot(5,2,7), bar(procs_rand_topThird_4.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Top Third, Run 4: Priorities');
subplot(5,2,8), bar(procs_rand_topThird_4.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Top Third, Run 4: Run Times');
subplot(5,2,9), bar(procs_rand_topThird_5.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Top Third, Run 5: Priorities');
subplot(5,2,10), bar(procs_rand_topThird_5.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Top Third, Run 5: Run Times');

% Generate random/threshold values
fprintf('Generating random/threshold values...\n');
procs_rand_threshold_1 = runSchedulerSimulation(5, 1000, [],[], 'random', 'threshold');
procs_rand_threshold_2 = runSchedulerSimulation(5, 1000, [],[], 'random', 'threshold');
procs_rand_threshold_3 = runSchedulerSimulation(5, 1000, [],[], 'random', 'threshold');
procs_rand_threshold_4 = runSchedulerSimulation(5, 1000, [],[], 'random', 'threshold');
procs_rand_threshold_5 = runSchedulerSimulation(5, 1000, [],[], 'random', 'threshold');
figure;
subplot(5,2,1), bar(procs_rand_threshold_1.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Threshold, Run 1: Priorities');
subplot(5,2,2), bar(procs_rand_threshold_1.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Threshold, Run 1: Run Times');
subplot(5,2,3), bar(procs_rand_threshold_2.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Threshold, Run 2: Priorities');
subplot(5,2,4), bar(procs_rand_threshold_2.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Threshold, Run 2: Run Times');
subplot(5,2,5), bar(procs_rand_threshold_3.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Threshold, Run 3: Priorities');
subplot(5,2,6), bar(procs_rand_threshold_3.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Threshold, Run 3: Run Times');
subplot(5,2,7), bar(procs_rand_threshold_4.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Threshold, Run 4: Priorities');
subplot(5,2,8), bar(procs_rand_threshold_4.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Threshold, Run 4: Run Times');
subplot(5,2,9), bar(procs_rand_threshold_5.priorities), xlabel('Process ID'), ylabel('Priority'), ...
    title('Random, Threshold, Run 5: Priorities');
subplot(5,2,10), bar(procs_rand_threshold_5.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Random, Threshold, Run 5: Run Times');

% Generate uniform values
fprintf('Generating uniform values...\n');
procs_uniform_top = runSchedulerSimulation(5, 1000, [],[], 'uniform', 'top');
procs_uniform_topThird = runSchedulerSimulation(5, 1000, [],[], 'uniform', 'topThird');
procs_uniform_threshold = runSchedulerSimulation(5, 1000, [],[], 'uniform', 'threshold');
figure;
subplot(1,3,1), bar(procs_uniform_top.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Uniform, Top');
subplot(1,3,2), bar(procs_uniform_topThird.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Uniform, Top Third');
subplot(1,3,3), bar(procs_uniform_threshold.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Uniform, Threshold');

% Generate ascending values
fprintf('Generating ascending values...\n');
procs_ascending_top = runSchedulerSimulation(5, 1000, [],[], 'ascending', 'top');
procs_ascending_topThird = runSchedulerSimulation(5, 1000, [],[], 'ascending', 'topThird');
procs_ascending_threshold = runSchedulerSimulation(5, 1000, [],[], 'ascending', 'threshold');
figure;
subplot(1,3,1), bar(procs_ascending_top.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Ascending, Top');
subplot(1,3,2), bar(procs_ascending_topThird.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Ascending, Top Third');
subplot(1,3,3), bar(procs_ascending_threshold.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Ascending, Threshold');

% Generate varying weight values
fprintf('Generating varied weight values...\n');
procs_weight_0_0   = runSchedulerSimulation(5, 1000, 0.0, [], 'ascending', 'top');
procs_weight_0_2 = runSchedulerSimulation(5, 1000, 0.2, [], 'ascending', 'top');
procs_weight_0_4 = runSchedulerSimulation(5, 1000, 0.4, [], 'ascending', 'top');
procs_weight_0_6 = runSchedulerSimulation(5, 1000, 0.6, [], 'ascending', 'top');
procs_weight_0_8 = runSchedulerSimulation(5, 1000, 0.8, [], 'ascending', 'top');
procs_weight_1_0   = runSchedulerSimulation(5, 1000, 1.0, [], 'ascending', 'top');
figure;
subplot(3,2,1), bar(procs_weight_0_0.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Weight=0.0');
subplot(3,2,2), bar(procs_weight_0_2.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Weight=0.2');
subplot(3,2,3), bar(procs_weight_0_4.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Weight=0.4');
subplot(3,2,4), bar(procs_weight_0_6.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Weight=0.6');
subplot(3,2,5), bar(procs_weight_0_8.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Weight=0.8');
subplot(3,2,6), bar(procs_weight_1_0.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Weight=1.0');

% Generate varying weight values
fprintf('Generating varied timespan values...\n');
procs_timespan_25   = runSchedulerSimulation(5, 1000, [],   25, 'ascending', 'top');
procs_timespan_50   = runSchedulerSimulation(5, 1000, [],   50, 'ascending', 'top');
procs_timespan_100  = runSchedulerSimulation(5, 1000, [],  100, 'ascending', 'top');
procs_timespan_250  = runSchedulerSimulation(5, 1000, [],  250, 'ascending', 'top');
procs_timespan_500  = runSchedulerSimulation(5, 1000, [],  500, 'ascending', 'top');
procs_timespan_1000 = runSchedulerSimulation(5, 1000, [], 1000, 'ascending', 'top');
figure;
subplot(3,2,1), bar(procs_timespan_25.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Length=25');
subplot(3,2,2), bar(procs_timespan_25.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Length=50');
subplot(3,2,3), bar(procs_timespan_25.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Length=100');
subplot(3,2,4), bar(procs_timespan_25.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Length=250');
subplot(3,2,5), bar(procs_timespan_25.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Length=500');
subplot(3,2,6), bar(procs_timespan_25.runTimes), xlabel('Process ID'), ylabel('Run Time'), ...
    title('Length=1,000');