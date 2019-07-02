defmodule Osiris.List do
  require Logger
  
  def filter_nil(list) do
    list
    |> Enum.filter(& !is_nil(&1))
  end
end
