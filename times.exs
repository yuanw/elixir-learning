defmodule Times do
    def double(n) do
        n * 2
    end

    def triple(n) do
        n * 3
    end

    def quadruple(n) do
        Times.double(Times.double(n))
    end

    def sum(0), do: 0
    def sum(n), do: n + sum(n-1)

    def gcd(x, 0), do: x
    def gcd(x, y), do: gcd(y, rem(x,y))
end
