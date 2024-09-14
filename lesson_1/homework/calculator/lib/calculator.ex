defmodule Calculator do
  @moduledoc """
  Documentation for `Calculator`.
  """

  @doc """
  Addition 2 numbers.

      iex> Calculator.addition(40, 2)
      42
  """
  def addition(num1, num2), do: num1 + num2

  @doc """
  Subtraction 2 numbers

      iex> Calculator.subtraction(44, 2)
      42
  """
  def subtraction(num1, num2), do: num1 - num2


  @doc """
  Division 2 numbers

      iex> Calculator.division(84, 2)
      42.0
      iex> Calculator.division(42, 0)
      "division by zero is not allowed"
  """
  def division(_, 0), do: "division by zero is not allowed"
  def division(num1, num2), do: num1 / num2

  @doc """
  Multiplication 2 numbers

      iex> Calculator.multiplication(21, 2)
      42
  """
  def multiplication(num1, num2), do: num1 * num2
end
