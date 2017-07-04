function bool = eligible(v,q)
avg = (v+q)/2;
if avg>=92 && v>88 &q>88
    bool=true;
else
    bool=false;
end