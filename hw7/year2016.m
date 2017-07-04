function A = year2016(n)
b = (floor(n)==n);
c = isscalar(n);
if c~=1||b==0||n<=0||n>12
    A= [];
else
    days_num = [31 29 31 30 31 30 31 31 30 31 30 31];
    days = ['Mon'; 'Tue';'Wed'; 'Thu'; 'Fri'; 'Sat';'Sun'];
    starting_day = [5;1;2;5;7;3;5;1;4;6;2;4];
    A = [];
    l = -1;
    for i=0:days_num(1,n)-1
        if n==1
            month_name = 'January';
        elseif n==2
            month_name = 'February';
        elseif n==3
            month_name = 'March';
        elseif n==4
            month_name = 'April';
        elseif n==5
            month_name = 'May';
        elseif n==6
            month_name = 'June';
        elseif n==7
            month_name = 'July';
        elseif n==8
            month_name = 'August';
        elseif n==9
            month_name = 'September';
        elseif n==10
            month_name = 'October';
        elseif n==11
            month_name = 'November';
        elseif n==12
            month_name = 'December';
        end
        index = mod((starting_day(n,1)+l),7)+1;
        k = struct('month',month_name, 'date',i+1, 'day', days(index,:));
        A = [A k];
        l = l+1;
    end
end
end