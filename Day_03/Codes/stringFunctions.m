%01 string functions
str1 = "apple";
str2 = "banana";

result = strcat(str1,str2);
disp(result) %output - applebanana

%02 Create array with variables.
x = {'hello','world','sri'};
result2 = strcat(x{:});
disp(result2) %output - helloworldsri

%or

result3 = strjoin(x,':');
disp(result3) %output - hello:world:sri

%03 string compare
str1 = 'age';
str2 = 'age';
result4 = strcmp(str1,str2);
disp(result4) %output - 1

%04 strfind - get the first index.
str1 = 'the cat sat on the mat';
indic = strfind(str1,'cat');
disp(indic) %output - 5

%05 replace.
str1 = 'the cat sat on the mat';
old = 'cat';
new = 'dog';
replace = strrep(str1,old,new);
disp(replace) %output - the dog sat on the mat

%06 substring
inputstring = 'apple,banana,orange,grapes';
substring = strsplit(inputstring,',');
disp(substring) %output -  {'apple'}    {'banana'}    {'orange'}    {'grapes'}

%07 lower/upper case.
str1 = 'apPLE';
lower(str1) %output - 'apple'
upper(str1) %output - 'APPLE'

%08 remove white space.
result = strtrim(' hello world ! ');
disp(result) %output - hello world !