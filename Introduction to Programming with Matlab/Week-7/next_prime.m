function k = next_prime(n)
m = n+1;
if (n>0 & isscalar(n) & fix(n)==n)
    while (m>n)
        if (isprime(m))
            k=m
            break
        end
        m =m+1;
    end
end
end