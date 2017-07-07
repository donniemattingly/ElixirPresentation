defmodule Recursion do
  def print_multiple_times(msg, n) when n <= 1 do
    IO.puts msg
  end

  def print_multiple_times(msg, n) do
    IO.puts msg
    print_multiple_times(msg, n - 1)
  end

  # Lists are also defined to supoort recursive operations
  def show_cons(list, value) do
    [value | list]
  end

  def print_list([]) do
    IO.puts "End"
  end
  
  def print_list([h | t]) do
    IO.puts(h)
    print_list(t)
  end
end
