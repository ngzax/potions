defmodule Recursion do
  def print_multiple_times(msg, n) when n <= 1 do
    IO.puts msg
  end

  def print_multiple_times(msg, n) do
    IO.puts msg
    print_multiple_times(msg, n - 1)
  end
  
  def rem_dupes([]), do: []
  def rem_dupes(list), do: rem_dupes_sorted(Enum.sort(list))
  def rem_dupes_sorted([first | t]), do: [first | rem_dupes_sorted(t, first)]
  
  def rem_dupes_sorted([], _), do: []
  def rem_dupes_sorted([same | t], same), do: rem_dupes_sorted(t, same)
  def rem_dupes_sorted([next | t], _last), do: [next | rem_dupes_sorted(t, next)]
  
end
