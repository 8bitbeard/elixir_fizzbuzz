defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, result}) do
    converted =
      result
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, converted}
  end

  defp handle_file_read({:error, error}), do: {:error, "Error, reading the file #{error}"}

  defp convert_and_evaluate_numbers(element) do
    element
    |> String.to_integer()
    |> evaluate_number()
  end

  defp evaluate_number(num) when rem(num, 3) == 0 and rem(num, 5) == 0, do: :fizzbuzz
  defp evaluate_number(num) when rem(num, 3) == 0, do: :fizz
  defp evaluate_number(num) when rem(num, 5) == 0, do: :buzz
  defp evaluate_number(num), do: num
end
