defmodule Calcs do

  def square_root(val), do: :math.sqrt
  def squared(val), do: val * val
  def cubed(val), do: val * val * val
  def nth_root(val, n), do: val |> :math.pow(1/n)

end
