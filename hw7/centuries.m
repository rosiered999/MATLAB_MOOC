function cent = centuries(year)
an = '';
if isscalar(year)~=1
    c =0;
elseif floor(year/100)*100==year
    c = floor(year/100);
elseif (floor(year)==year) && floor(year/100)*100~=year
    c = floor(year/100)+1;
elseif year>3000
    c = 0;
else
    c=0;
end
if c==30
    an = ['XXX'];
    c=0;
elseif c>=20 && c<30
    an = ['XX'];
    c = c-20;
elseif c>=10 && c<20
    an = ['X'];
    c = c-10;
elseif c==0
    an = '';
end

if c==0
    an = [an ''];
elseif c==1
    an = [an 'I'];
elseif c==2
    an = [an 'II'];
elseif c==3
    an = [an 'III'];
elseif c==4
    an = [an 'IV'];
elseif c==5
    an = [an 'V'];
elseif c==6
    an = [an 'VI'];
elseif c==7
    an = [an 'VII'];
elseif c==8
    an = [an 'VIII'];
elseif c==9
    an = [an 'IX'];
end
cent = an;