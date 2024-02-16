% Name: Olawale Olabode
% Matric no: 239047017
% Programme: Master of Engineering Systems Management

% 8. Manipulating variables
load('classGrades.mat'); % Load Class grades from a file
disp(namesAndGrades(1:5, :)); % Display the first five rows from the classgrades table
grades = namesAndGrades(:, 2:end); % Remove first columnc, display value from row 2 to 8
meanGrades = mean(grades) % Mean value of the grades including NaN
meanGrades = nanmean(grades) % Mean vlaue of the grades excluding NaN
meanMatrix = ones(15,1)*meanGrades % Uniform meanGrades represented in matrix 15x7
curvedGrades = 3.5*(grades./meanMatrix); % Calculate curvedGrades
nanmean(curvedGrades); % Display curveGrades removing NaN values
curvedGrades(curvedGrades > 5) = 5; % Equating curveGrades geater than 5 to 5
totalGrade = ceil(nanmean(curvedGrades,2));
letters = 'FDCBA'; % Declare letter grades in increasing order
letterGrades = letters(totalGrade); % merge totalgrade to corresponding lettergrades
disp(['Grades: ', letterGrades]) % Display the grades, represented in lettergrades