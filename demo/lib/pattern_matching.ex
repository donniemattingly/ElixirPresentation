defmodule PatternMatching do

  def print_result({:ok, value}) do
    IO.puts value
  end

  def print_result({:error, value}) do
    IO.puts "There was an error"
  end

  def response(%{:status => status, :body => %{:error => error}}) when status > 204 do
    {:error, error}
  end

  def response(%{:status => status, :body => body}) when status <= 204 do
    {:ok, body}
  end

end
