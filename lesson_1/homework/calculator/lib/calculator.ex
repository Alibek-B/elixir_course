defmodule Calculator do
  @moduledoc """
  Documentation for `Calculator`.

  A module for adding, subtracting, dividing and multiplying numbers.
  """

  @type number_string() :: number() | String.t()

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
  @spec addition(number(), number()) :: number_string()
  def addition(num1, num2) when is_number(num1) and is_number(num2), do: num1 + num2
  def addition(_, _), do: invalid_arguments_message()

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
  @spec subtraction(number(), number()) :: number_string()
  def subtraction(num1, num2) when is_number(num1) and is_number(num2), do: num1 - num2
  def subtraction(_, _), do: invalid_arguments_message()


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
  @spec division(number(), number()) :: number_string()
  def division(num1, 0) when is_number(num1), do: "division by zero is not allowed"
  def division(num1, num2) when is_number(num1) and is_number(num2), do: num1 / num2
  def division(_, _), do: invalid_arguments_message()

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
  @spec multiplication(number(), number()) :: number_string()
  def multiplication(num1, num2) when is_number(num1) and is_number(num2), do: num1 * num2
  def multiplication(_, _), do: invalid_arguments_message()

  defp invalid_arguments_message(), do: "invalid arguments: must be integer or float type"
end
