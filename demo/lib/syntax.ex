defmodule Syntax do


  def titlecase_ugly(sentence) do
    Enum.join(Enum.map(String.split(sentence, " "), &String.capitalize(&1)), " ")
  end

  def titlecase(sentence) do
    sentence
    |> String.split(" ")
    |> Enum.map(&String.capitalize(&1))
    |> Enum.join(" ")
  end


  def sigil_example  do
    regex = ~r/\A[^aeiou]/ # matches for words starting with consonant
    ~w(This is an example of a sigil. This will be converted into a list of strings)
    |> Enum.filter(fn word -> word =~ regex end)
  end


  def vegeta_response(power_level) when power_level > 9000 do
    IO.puts "IT'S OVER 9000!"
  end

  def vegeta_response(power_level) do
    IO.puts "meh"
  end

  def list_of_squares(to) do
    for n <- 1..to, do: n * n
  end

  def pythagorean(n) when n > 0 do
    for a <- 1..n,
        b <- 1..n,
        c <- 1..n,
        a + b + c <= n,
        a*a + b*b == c*c,
        do: {a, b, c}
  end

end
