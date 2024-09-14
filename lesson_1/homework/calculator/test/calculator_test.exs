defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "addition numbers" do
    assert Calculator.addition(40, 2) == 42
    assert Calculator.addition(40.0, 2) == 42.0
  end

  test "addition when not-integer or non-float values" do
    assert Calculator.addition("40", 2) == "can't addition non-integer or non-floating values"
    assert Calculator.addition(40, "2") == "can't addition non-integer or non-floating values"
    assert Calculator.addition("40", "2") == "can't addition non-integer or non-floating values"
  end

  test "subtraction numbers" do
    assert Calculator.subtraction(44, 2) == 42
    assert Calculator.subtraction(44.0, 2) == 42.0
  end

  test "subtraction when non-integer or non-float values" do
    assert Calculator.subtraction("44", 2) == "can't subtraction non-integer or non-floating values"
    assert Calculator.subtraction(44, "2") == "can't subtraction non-integer or non-floating values"
    assert Calculator.subtraction("44", "2") == "can't subtraction non-integer or non-floating values"
  end

  test "division by 0" do
    assert Calculator.division(42, 0) == "division by zero is not allowed"
  end

  test "division by not 0" do
    assert Calculator.division(84, 2) == 42
    assert Calculator.division(84.0, 2) == 42.0
  end

  test "division when non-integer or non-float values" do
    assert Calculator.division("84", 2) == "can't division non-integer or non-floating values"
    assert Calculator.division(84, "2") == "can't division non-integer or non-floating values"
    assert Calculator.division("84", "2") == "can't division non-integer or non-floating values"
  end

  test "multiplication numbers" do
    assert Calculator.multiplication(21, 2) == 42
    assert Calculator.multiplication(21.0, 2) == 42.0
  end

  test "multiplication when non-integer or non-float values" do
    assert Calculator.multiplication("21", 2) == "can't multiplication non-integer or non-floating values"
    assert Calculator.multiplication(21, "2") == "can't multiplication non-integer or non-floating values"
    assert Calculator.multiplication("21", "2") == "can't multiplication non-integer or non-floating values"
  end
end
