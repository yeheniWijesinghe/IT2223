marks = zeros(1, 5);

for i = 1:5
    marks(i) = input(['Enter the marks for student ' num2str(i) ' (0-100): ']);
    while marks(i) < 0 || marks(i) > 100
        fprintf('Invalid input. Please enter a mark between 0 and 100.\n');
        marks(i) = input(['Enter the marks for student ' num2str(i) ' (0-100): ']);
    end

    if marks(i) >= 90
        grade = 'A';
    elseif marks(i) >= 80
        grade = 'B';
    elseif marks(i) >= 70
        grade = 'C';
    elseif marks(i) >= 60
        grade = 'D';
    else
        grade = 'F';
    end
    
    fprintf('Student %d: Grade = %s\n', i, grade);
end

while true

    fprintf('\nMenu:\n');
    fprintf('1. Show all marks as a bar chart\n');
    fprintf('2. Show average marks\n');
    fprintf('3. Exit\n');
    
    choice = input('Please enter your choice (1-3): ');
    
    switch choice
        case 1  
            bar(marks);  
            title('Marks of 5 Students');
            xlabel('Student Number');
            ylabel('Marks');
            grid on;  
            
        case 2  
            avg_marks = mean(marks); 
            fprintf('The average marks are: %.2f\n', avg_marks);
            
        case 3  
            fprintf('Thank you for using the program. Goodbye!\n');
            break;  
            
        otherwise
            fprintf('Invalid choice. Please enter a number between 1 and 3.\n');
    end
end