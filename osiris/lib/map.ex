defmodule Osiris.Map do
  # Module containing a variety of map helpers
  require Logger

  def selective_reduce(keys, map) do
    keys
    |> Enum.map(fn key ->
      {key, map[key]}
    end)
    |> Enum.into(%{})
  end

  def filter_nil(map) do
    keys = Map.keys(map)
    keys
    |> Enum.map(fn key ->
      if is_nil(map[key]) do
        nil
      else
        {key, map[key]}
      end
    end)
    |> Enum.filter(& !is_nil(&1))
    |> Enum.into(%{})
  end

  def atomify(map) do
    map
    |> Map.new(fn {k, v} -> {String.to_atom(k), v} end)
  end

  def get_nested_key(map, key1, key2) do
    value1 = Map.get(map, key1)
    if is_nil(value1) do
      nil
    else
      Map.get(value1, key2)
    end
  end

  def get_nested_key(map, key1, key2, key3) do
    value2 = get_nested_key(map, key1, key2)
    if is_nil(value2) do
      nil
    else
      Map.get(value2, key3)
    end
  end
end
