% Find Fourier Transform of f(t) = V*rect(t/T)
fprintf('Starting program...');

% Let's work on rect function first 
% Let's try to plot the function 
fprintf("Plotting f(t) = V*rect((t-to)/T)");
T = input("Enter value for T ")
to = input("Enter value for to ")
t = input("Enter value for t ")
V = input("Enter value for V ")

fprintf("f(t) = %f*rect((%f-%f)/%f)",V, t, to, T);