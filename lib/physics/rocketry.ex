defmodule Converter do
  def round_to_nearest_tenth(val) do
    Float.ceil val, 1
  end

  def m_to_km(val) do
    val / 1000
  end

  def to_light_seconds({:miles, miles}) do
    (miles * 5.36819e-6) |> round_down
  end

  def to_light_seconds({:meters, meters}) do
    (meters * 3.335638620368e-9) |> round_down
  end

  def round_down(val) when is_float(val), do: trunc(val)
end

defmodule Physics.Rocketry do

  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> convert_m_to_km
      |> round_to_nearest_tenth
  end





  defp calculate_escape%{mass: mass, radius: radius}) do
    newtons_constant = 6.67e-11
    2 * newtons_constant * mass / radius
    |> :math.sqrt
  end

end