defmodule Deck do
  @moduledoc false



  def cards do
    %{
    	Pine:          ["plain1", "plain2", "ribbon", "bright"],
    	Plum:          ["plain1", "plain2", "ribbon", "animal"],
    	Sakura:        ["plain1", "plain2", "ribbon", "bright"],
    	Wisteria:      ["plain1", "plain2", "ribbon", "animal"],
    	Iris:          ["plain1", "plain2", "ribbon", "animal"],
    	Peony:         ["plain1", "plain2", "ribbon", "animal"],
    	Clover:        ["plain1", "plain2", "ribbon", "animal"],
    	Pampas:        ["plain1", "plain2", "animal", "bright"],
    	Chrysanthemum: ["plain1", "plain2", "ribbon", "animal"],
    	Maple:         ["plain1", "plain2", "ribbon", "animal"],
    	Willow:        ["plain1", "ribbon", "animal", "bright"],
    	Paulownia:     ["plain1", "plain2", "plain3", "bright"],
    }
  end

  def create(cards) do
    Enum.flat_map cards, fn({suit, values}) ->
        for value <- values do
            %{suit: suit, value: value}
        end
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def serve_deck do
    deck = cards()
    |> create
    |> shuffle
  end

  
end