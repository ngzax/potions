defmodule Math do
  def sum(a, b) do
    a + b
  end

  defp do_sum(a, b) do
    a + b
  end

  "Map"
  def double_each([head|tail]) do
    [head * 2| double_each(tail)]
  end

  def double_each([]) do
    []
  end

  "Reduce"
  def sum_list([head|tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end

  def zero?(0) do
    true
  end

  def zero?(x) when is_number(x) do
    false
  end
end
