defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns a converted list" do
      file_name = "numbers.txt"

      response = FizzBuzz.build(file_name)

      expected_response = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}

      assert response == expected_response
    end

    test "when a invalid file is provided, returns an error" do
      file_name = "invalid.txt"

      response = FizzBuzz.build(file_name)

      expected_response = {:error, "Error, reading the file enoent"}

      assert response == expected_response
    end
  end
end
