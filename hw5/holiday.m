function bool = holiday(m,d)
if m==1 && d==1
    bool=true;
elseif m==7 && d==4
    bool=true;
elseif m==12 && d==25
    bool=true;
elseif m==12 && d==31
    bool=true;
else
    bool=false;
end