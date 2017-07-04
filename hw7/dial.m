function num1 = dial(input)
len = length(input);
i=1;
flag=0;
num = [];
while i<=len
    if input(i)=='A' || input(i)=='B' || input(i)=='C'
        num = [num '2'];
    elseif input(i)=='D' || input(i)=='E' || input(i)=='F'
        num = [num '3'];
    elseif input(i)=='G' || input(i)=='H' || input(i)=='I'
        num = [num '4'];
    elseif input(i)=='J' || input(i)=='K' || input(i)=='L'
        num = [num '5'];
    elseif input(i)=='M' || input(i)=='N' || input(i)=='O'
        num = [num '6'];
    elseif input(i)=='P' || input(i)=='Q' || input(i)=='R' || input(i)=='S'
        num = [num '7'];
    elseif input(i)=='T' || input(i)=='U' || input(i)=='V'
        num = [num '8'];
    elseif input(i)=='W' || input(i)=='X' || input(i)=='Y' || input(i)=='Z'
        num = [num '9'];
    elseif str2num(input(i))==1 
        num = [num '1'];
    elseif str2num(input(i))==0
        num = [num '0'];
    elseif str2num(input(i))==2 
        num = [num '2'];
    elseif str2num(input(i))==3
        num = [num '3'];
    elseif str2num(input(i))==4 
        num = [num '4'];
    elseif str2num(input(i))==5
        num = [num '5'];
    elseif str2num(input(i))==6 
        num = [num '6'];
    elseif str2num(input(i))==7
        num = [num '7'];
    elseif str2num(input(i))==8 
        num = [num '8'];
    elseif str2num(input(i))==9 
        num = [num '9'];
    else
        flag = 1;
        break;
    end
    i = i+1;
end
if flag==0
    num1 = str2num(num);
    num1 = uint64(num1);
else
    num1 = uint64(0);
end
end