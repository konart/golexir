defmodule Yaku do
  @moduledoc false

  def check(card) do
    card |> is_sanko([])
  end

  def is_sanko(%{suit: suit, value: value} = card, yakus) do
    case {suit, value} do
      {"wisteria", "plain2"} -> true
      _ -> false
    end
  end
end
