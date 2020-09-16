function valid = valid_date(year, month, day)

if ((year>=0 & month>0 & day>0) & ((floor(year)==year) & (floor(month)== month) & (floor(day)==day)) & (isscalar(year) & isscalar(month) & isscalar(day)))
    if ( (mod(year,4)~=0) || ((mod(year,4)==0) && (mod(year,100)==0) && (mod(year,400)~=0)))
        if (month == 1 && day<=31)
            valid = true;
        elseif (month == 2 && day<=28)
            valid = true;
        elseif (month == 3 && day<=31)
            valid = true;
        elseif (month == 4 && day<=30)
            valid = true;
        elseif (month == 5 && day<=31)
            valid = true;
        elseif (month == 6 && day<=30)
            valid = true;
        elseif (month == 7 && day<=31)
            valid = true;
        elseif (month == 8 && day<=31)
            valid = true;
        elseif (month == 9 && day<=30)
            valid = true;
        elseif (month == 10 && day<=31)
            valid = true;
        elseif (month == 11 && day<=30)
            valid = true;
        elseif (month == 12 && day<=31)
            valid = true;
        else
            valid = false;
        end
    elseif(((mod(year,4)==0) && (mod(year,100)~=0)) || ((mod(year,4)==0) && (mod(year,400) == 0)))
        if (month == 1 && day<=31)
            valid = true;
        elseif (month == 2 && day<=29)
            valid = true;
        elseif (month == 3 && day<=31)
            valid = true;
        elseif (month == 4 && day<=30)
            valid = true;
        elseif (month == 5 && day<=31)
            valid = true;
        elseif (month == 6 && day<=30)
            valid = true;
        elseif (month == 7 && day<=31)
            valid = true;
        elseif (month == 8 && day<=31)
            valid = true;
        elseif (month == 9 && day<=30)
            valid = true;
        elseif (month == 10 && day<=31)
            valid = true;
        elseif (month == 11 && day<=30)
            valid = true;
        elseif (month == 12 && day<=31)
            valid = true;
        else
            valid = false;
        end
    else
        valid = false;
    end
            
else
    valid = false;
end

end