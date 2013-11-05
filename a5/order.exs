defmodule Order do
    def o(a, b, c, d) do 
        IO.puts "done"
    end
    def a do 
        IO.puts "a was evaluated"
    end
    def b do 
        IO.puts "b was evaluated"
    end
    def c do 
        IO.puts "c was evaluated"
    end
    def d do 
        IO.puts "d was evaluated"
    end
end

Order.o(Order.a, Order.b, Order.c, Order.d);