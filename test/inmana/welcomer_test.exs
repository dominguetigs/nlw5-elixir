defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "when the user is special, returns a special message" do
      # Setup do teste
      params = %{"name" => "banana", "age" => "42"}
      expected_result = {:ok, "You are very special banana"}

      # Colhendo resultado
      result = Welcomer.welcome(params)

      # Verificando resultado
      assert result == expected_result
    end

    test "when the user is not special, returns a message" do
      # Setup do teste
      params = %{"name" => "Gustavo", "age" => "29"}
      expected_result = {:ok, "Welcome gustavo"}

      # Colhendo resultado
      result = Welcomer.welcome(params)

      # Verificando resultado
      assert result == expected_result
    end

    test "when the user is under age, returns an error" do
      # Setup do teste
      params = %{"name" => "Gustavo", "age" => "17"}
      expected_result = {:error, "You shall not pass gustavo"}

      # Colhendo resultado
      result = Welcomer.welcome(params)

      # Verificando resultado
      assert result == expected_result
    end
  end
end
