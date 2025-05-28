%Find the grade of given marks and calculate the GPA.
for i=1:5
    mark = input("Enter marks: ");
if(mark<0 || mark>100)
        grade = 'Outof range!';
    elseif(mark>=90)
        grade = 'A+';
        gpa = 4.0;
    elseif(mark>=80)
        grade = 'A';
        gpa = 3.7;
    elseif(mark>=70)
        grade = 'B';
        gpa = 3.0;
    elseif(mark>=60)
        grade = 'C';
        gpa = 2.0;
    elseif(mark>=50)
        grade = 'D';
        gpa = 1.0;
    else
        grade = 'F';
        gpa = 0.0;
end

disp("Marks: "+mark)
disp("Grade: "+grade)

end

gpa = mean(gpa);
disp("Your overall GPA: "+ gpa)



