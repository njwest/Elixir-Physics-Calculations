defmodule Converter do

  def to_light_seconds({unit,val}, precision: precision) do
    case unit do
      :miles -> mi_to_light_seconds(val)
      :meters -> m_to_light_seconds(val)
      :feet -> ft_to_light_seconds(val)
      :inches -> in_to_light_seconds(val)
    end
    |> round_to(precision)
  end

  def m_to_km(val) do
    val / 1000
  end

  def to_meters(val) when is_integer(val) or is_float(val) do
    val * 1000
  end

  def round_to_nearest_tenth(val) do
    Float.ceil val, 1
  end

  def seconds_to_hours(val)  when is_integer(val) or is_float(val) do
    val / 3600 |> round_to_nearest_tenth
  end

  defp mi_to_light_seconds(val), do: val * 5.36819e-6

  defp m_to_light_seconds(val), do: val * 3.335638620368e-9

  defp ft_to_light_seconds(val), do: val * 1.016702651488166404e-9

  defp in_to_light_seconds(val), do: val * 8.472522095734715723e-11

  defp round_to(val, precision), do: Float.round(val, precision)

end




#
#   def to_light_seconds({:miles, miles}) do
#     (miles * 5.36819e-6) |> round_down
#   end
#
#   def to_light_seconds({:meters, meters}) do
#     (meters * 3.335638620368e-9) |> round_down
#   end
#
#   def round_down(val) when is_float(val), do: trunc(val)
#
# end
