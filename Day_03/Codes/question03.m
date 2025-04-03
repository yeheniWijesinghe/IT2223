%11 check the letter is a vowel or a constant.
a = input("Enter a letter: ","s");
l = upper(a);
if(l>=0 && l<=9)
    disp("Enter a letter!")
else
    if(l=='A' || l=='E' || l=='I' || l=='O' || l=='U')
        disp(a+" is a vowel.")
    else
        disp(a+" is a constant.")

    end
end