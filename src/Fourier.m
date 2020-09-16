% Find Fourier Transform of f(t) = V*rect(t/T)
fprintf('Starting program...\n');

% Let's work on rect function first 
% Let's try to plot the function 
fprintf('Plotting f(t) = V*rect((t-to)/T)\n');
T = input('Enter value for T: ')
to = input('Enter value for to: ')
% t = input('Enter value for t: ')
V = input('Enter value for V: ')

fprintf('f(t) = %f*rect((t-%f)/%f)\n',V, to, T);

% t = [-100:0.01:100];
ft = zeros(1,) % TODO finish loading array 
for t = -100:0.01:100
    ft = V * rect((t - to)/T);
end
