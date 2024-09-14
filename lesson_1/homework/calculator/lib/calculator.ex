defmodule Calculator do
  @moduledoc """
  Documentation for `Calculator`.

  A module for adding, subtracting, dividing and multiplying numbers.
  """

  @doc """
  Addition 2 numbers. The arguments can be integers or floats.

  Returns an `integer` or `float` or message about non-integer or non-floating arguments

  ## Examples

      iex> Calculator.addition(40, 2)
      42
      iex> Calculator.addition(40.0, 2)
      42.0
      iex> Calculator.addition("42", 2)
      "can't addition non-integer or non-floating values"
  """
  def addition(num1, num2) when not (is_integer(num1) or is_float(num1)) or not (is_integer(num2) or is_float(num2)) do
    "can't addition non-integer or non-floating values"
  end
  def addition(num1, num2), do: num1 + num2

  @doc """
  Subtraction 2 numbers. The arguments can be integers or floats.

  Returns an `integer` or `float` or message about non-integer or non-floating arguments

  ## Examples

      iex> Calculator.subtraction(44, 2)
      42
      iex> Calculator.subtraction(44.0, 2)
      42.0
      iex> Calculator.subtraction("44", 2)
      "can't subtraction non-integer or non-floating values"
  """
  def subtraction(num1, num2) when not (is_integer(num1) or is_float(num1)) or not (is_integer(num2) or is_float(num2)) do
    "can't subtraction non-integer or non-floating values"
  end
  def subtraction(num1, num2), do: num1 - num2


  @doc """
  Division 2 numbers. The arguments can be integers or floats.

  Returns an `integer`(when 2 arguments is integer) or `float` or message about non-integer or non-floating arguments

  ## Examples

      iex> Calculator.division(84, 2)
      42
      iex> Calculator.division(84, 2.0)
      42.0
      iex> Calculator.division("84", 2)
      "can't division non-integer or non-floating values"
      iex> Calculator.division(42, 0)
      "division by zero is not allowed"
  """
  def division(num1, num2) when not (is_integer(num1) or is_float(num1)) or not (is_integer(num2) or is_float(num2)) do
    "can't division non-integer or non-floating values"
  end
  def division(_, 0), do: "division by zero is not allowed"
  def division(num1, num2) when is_integer(num1) and is_integer(num2), do: (num1 / num2) |> trunc()
  def division(num1, num2), do: num1 / num2

  @doc """
  Multiplication 2 numbers. The arguments can be integers or floats.

  Returns an `integer` or `float` or message about non-integer or non-floating arguments

  ## Examples

      iex> Calculator.multiplication(21, 2)
      42
      iex> Calculator.multiplication(21.0, 2)
      42.0
      iex> Calculator.multiplication("21", 2)
      "can't multiplication non-integer or non-floating values"
  """
  def multiplication(num1, num2) when not (is_integer(num1) or is_float(num1)) or not (is_integer(num2) or is_float(num2)) do
    "can't multiplication non-integer or non-floating values"
  end
  def multiplication(num1, num2), do: num1 * num2
end
