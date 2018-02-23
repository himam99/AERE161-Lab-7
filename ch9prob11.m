clear, clc;

%initialize variables
lines = 0;
x = 0;

while 1
    x = x+1; %iterate the loop
    %sequentially assign filenames
    name = strcat('exfile',num2str(x),'.dat');
    fid = fopen(name); %check if the file is valid
    if fid == -1 %if invalid filename (i.e. file isn't there)
        break %break the loop
    else %if valid
        s = load(name); %load the file as array s
        lines = lines + size(s,1); %add the height of the array to lines
    end
end

%print results
fprintf('There are %d lines across the files. \n', lines);