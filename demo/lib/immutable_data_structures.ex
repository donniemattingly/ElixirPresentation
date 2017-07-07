defmodule ImmutableDataStructures do

  def assignment do
    x = %{}
  end

  def mutation do
    x = %{}
    Map.put(x, :key, "value")
    x
  end
  
  def reassignment do
    x = %{}
    x = Map.put(x, :key, "value")
  end

end
