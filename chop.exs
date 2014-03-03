defmodule Chop do
    def guess(actual, range) do
        low..high = range
        first_guess = make_new_guess(low, high)
        IO.puts "Is it #{first_guess}"
        IO.puts make_guess(first_guess, actual, range)
    end

    def make_new_guess(low, high) do
         div((high - low), 2) + low
    end

    def make_guess(current_guess, actual, _.._) when current_guess == actual  do
        IO.puts "Is it #{current_guess}"
        actual
    end

    def make_guess(current_guess, actual, low..high) when current_guess < actual do
        new_guess = make_new_guess(current_guess, high)
        IO.puts "Is it #{new_guess}"
        make_guess(new_guess, actual, current_guess..high)
    end

    def make_guess(current_guess, actual, low..high) when current_guess > actual do
        new_guess = make_new_guess(low, current_guess)
        IO.puts "Is it #{new_guess}"
        make_guess(new_guess, actual, low..current_guess)
    end

end
