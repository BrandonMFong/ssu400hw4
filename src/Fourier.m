
% Find Fourier Transform of f(t) = V*rect(t/T)
fprintf('Starting program...\n');

% Let's work on rect function first 
% Let's try to plot the function 
fprintf('Plotting f(t) = V*rect((t-to)/T)\n');
T = input('Enter value for T: ')
% to = input('Enter value for to: ')
% t = input('Enter value for t: ')
V = input('Enter value for V: ')

fprintf('f(t) = %f*rect((t)/%f)\n',V, T);


%% RECT %%
% t = [-100:0.01:100];
idx = 1;
ft = zeros(1,const.Taxis*(2*100)); % TODO finish loading array 
for t = -const.Taxis:const.Taxis/(10000):const.Taxis
    ft(1,idx) = V * rect((t)/T);
    idx = idx + 1;
end

t = -const.Taxis:const.Taxis/(10000):const.Taxis;
plot(t,ft);

ylim([-5 5])

% TODO get fourier transform

%% SINC %%
idx = 1;
FT = zeros(1,const.Taxis*(2*100)); % TODO finish loading array 
for w = -const.Taxis:const.Taxis/(10000):const.Taxis
    FT(1,idx) = V * T * sinc((T*w)/2);
    idx = idx + 1;
end

w = -const.Taxis:const.Taxis/(10000):const.Taxis;
hold on % Keep other plot and plot ontop 
plot(w,FT);

ylim([-5 5])



