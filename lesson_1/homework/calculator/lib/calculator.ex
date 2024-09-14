defmodule Calculator do
  @moduledoc """
  Documentation for `Calculator`.

  A module for adding, subtracting, dividing and multiplying numbers.
  """

  @doc """
  Addition 2 numbers. The arguments can be integers or floats.

  Returns an `integer` or `float` or message about invalid arguments.

  ## Examples

      iex> Calculator.addition(40, 2)
      42
      iex> Calculator.addition(40.0, 2)
      42.0
      iex> Calculator.addition("42", 2)
      "invalid arguments: must be integer or float type"
  """
  def addition(num1, num2) when not (is_integer(num1) or is_float(num1)) or not (is_integer(num2) or is_float(num2)) do
    invalid_arguments_message()
  end
  def addition(num1, num2), do: num1 + num2

  @doc """
  Subtraction 2 numbers. The arguments can be integers or floats.

  Returns an `integer` or `float` or message about invalid arguments.

  ## Examples

      iex> Calculator.subtraction(44, 2)
      42
      iex> Calculator.subtraction(44.0, 2)
      42.0
      iex> Calculator.subtraction("44", 2)
      "invalid arguments: must be integer or float type"
  """
  def subtraction(num1, num2) when not (is_integer(num1) or is_float(num1)) or not (is_integer(num2) or is_float(num2)) do
    invalid_arguments_message()
  end
  def subtraction(num1, num2), do: num1 - num2


  @doc """
  Division 2 numbers. The arguments can be integers or floats.

  Returns an `integer`(when 2 arguments is integer) or `float` or about invalid arguments.

  ## Examples

      iex> Calculator.division(84, 2.0)
      42.0
      iex> Calculator.division("84", 2)
      "invalid arguments: must be integer or float type"
      iex> Calculator.division(42, 0)
      "division by zero is not allowed"
  """
  def division(num1, num2) when not (is_integer(num1) or is_float(num1)) or not (is_integer(num2) or is_float(num2)) do
    invalid_arguments_message()
  end
  def division(_, 0), do: "division by zero is not allowed"
  def division(num1, num2), do: num1 / num2

  @doc """
  Multiplication 2 numbers. The arguments can be integers or floats.

  Returns an `integer` or `float` or message about invalid arguments.

  ## Examples

      iex> Calculator.multiplication(21, 2)
      42
      iex> Calculator.multiplication(21.0, 2)
      42.0
      iex> Calculator.multiplication("21", 2)
      "invalid arguments: must be integer or float type"
  """
  def multiplication(num1, num2) when not (is_integer(num1) or is_float(num1)) or not (is_integer(num2) or is_float(num2)) do
    invalid_arguments_message()
  end
  def multiplication(num1, num2), do: num1 * num2

  defp invalid_arguments_message(), do: "invalid arguments: must be integer or float type"
end
