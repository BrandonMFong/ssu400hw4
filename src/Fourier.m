
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
idx = 1;
ft = zeros(1,const.Taxis*(2*100)); % TODO finish loading array 
for t = -const.Taxis:const.Taxis/(10000):const.Taxis
    ft(1,idx) = V * rect((t - to)/T);
    idx = idx + 1;
end

t = -const.Taxis:const.Taxis/(10000):const.Taxis;
plot(t,ft);

ylim([-5 5])

% TODO get fourier transform

