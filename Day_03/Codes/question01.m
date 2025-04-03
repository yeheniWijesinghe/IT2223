%09 Get marks from the user and print the grades.

%m>=90 A+
%m>=80 A
%m>=70 B
%m>=60 C
%m>=50 D
%else fail

marks = input("Enter marks: ")
    if(marks<0 || marks>100)
        disp('Outof range!')
    elseif(marks>=90)
        disp('A+')
    elseif(marks>=80)
        disp('A')
    elseif(marks>=70)
        disp('B')
    elseif(marks>=60)
        disp('C')
    elseif(marks>=50)
        disp('D')
    else
        disp('F')
    end
