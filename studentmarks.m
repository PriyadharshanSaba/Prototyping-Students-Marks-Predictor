fprintf('Implementing Linear Regression to\n');
fprintf('predict the SGPA of students in consequent semesters.\n');

clear ; close all; clc

fprintf('\n\nLoading data ...\n');

%% Load Data
data = load('ex11.txt');
X = data(:, [1,2]);
y = data(:, 3);
m = length(y);
plotData(X,y);
% Print out some data points
fprintf('First 10 examples from the dataset: \n\n\n');
fprintf('First Sem SGPA \t\t\tSecond Sem SGPA\t\t\t Third Sem SGPA\n\n');

fprintf(' %f \t\t\t%f\t\t%f\n', [X([1:10],1) X([1:10],2) y(1:10,:)]'');

fprintf('\n\nHit any key to continue...\n');
pause;

clc

% Scale features and set them to zero mean
fprintf('\nNormalizing Features...\n');


% Add intercept term to X
X = [ones(m, 1) X];


%Gradient Descent

fprintf('\nUsing Gradient Descent ...\n');

% Choose some alpha value
alpha = 0.1;
num_iters = 1000;

% Init Theta and Run Gradient Descent 
theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(featureNormalize(X), featureNormalize(y), theta, alpha, num_iters);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

% Display gradient descent's result
fprintf('\nEnter the marks in First Semester GPA ');
FirstSemMarks= input('');
fprintf('\nEnter the marks in Second Semester GPA ');

SecSemMarks=input('');
v=[0 (FirstSemMarks-mean(X(:,2)))/std(X(:,2)) (SecSemMarks-mean(X(:,3)))/std(X(:,3))];
% Estimate the marks.
thrdSemMarks=v*theta;
thrdSemMarks=thrdSemMarks*std(y)+mean(y);


fprintf(['\nPredicted marks in 3rd Sem are :\n\n%f\n\n'], thrdSemMarks);

fprintf('Hit any key to terminate...\n');
pause;
theta=normalEqn(X,y);
thrdSemMarks=[1 FirstSemMarks SecSemMarks]*theta;
%fprintf('USING NORMAL EQUATIONS\n\n');
%fprintf(['Predicted marks in 2rd Sem are :\n $%f\n'], thrdSemMarks);

