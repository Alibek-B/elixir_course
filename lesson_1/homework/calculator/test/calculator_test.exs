defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "addition numbers" do
    assert Calculator.addition(40, 2) == 42
  end

  test "subtraction numbers" do
    assert Calculator.subtraction(44, 2) == 42
  end

  test "division by 0" do
    assert Calculator.division(42, 0) == "division by zero is not allowed"
  end

  test "division by not 0" do
    assert Calculator.division(84, 2) == 42.0
  end

  test "multiplication numbers" do
    assert Calculator.multiplication(21, 2) == 42
  end
end
