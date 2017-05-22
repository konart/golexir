defmodule Deck do
  @moduledoc false



  def cards do
    %{
    	"pine"          => ["plain1", "plain2", "ribbon", "bright"],
    	"plum"          => ["plain1", "plain2", "ribbon", "animal"],
    	"sakura"        => ["plain1", "plain2", "ribbon", "bright"],
    	"wisteria"      => ["plain1", "plain2", "ribbon", "animal"],
    	"iris"          => ["plain1", "plain2", "ribbon", "animal"],
    	"peony"         => ["plain1", "plain2", "ribbon", "animal"],
    	"clover"        => ["plain1", "plain2", "ribbon", "animal"],
    	"pampas"        => ["plain1", "plain2", "animal", "bright"],
    	"chrysanthemum" => ["plain1", "plain2", "ribbon", "animal"],
    	"maple"         => ["plain1", "plain2", "ribbon", "animal"],
    	"willow"        => ["plain1", "ribbon", "animal", "bright"],
    	"paulownia"     => ["plain1", "plain2", "plain3", "bright"],
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