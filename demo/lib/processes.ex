defmodule Processes do

  def demo do
    send self(), {:hello, "world"}

    receive do
      {:hello, msg} -> msg
      {:world, msg} -> "Won't match"
    end
  end
end
