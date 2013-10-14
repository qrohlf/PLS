defmodule GCD do
    def gcd(p, q) do 
        cond do 
            q == 0 -> p
            true -> gcd(q, rem(p, q))
        end
    end
end
