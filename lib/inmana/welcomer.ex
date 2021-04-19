defmodule Inmana.Wellcomer do
  def welcome(%{"name" => name, "age" => age}) do
    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  defp evaluate("banana", "42") do
    "You are a banana"
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Wellcome #{name}"}
  end

  defp evaluate(_name, _age) do
    {:error, "You must be adult"}
  end
end
