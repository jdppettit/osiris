# Osiris

Osiris is a suite of helper functions for personal Elixir projects.

## Maps

### Selective reduce

Takes a list of desired keys and a map with said keys and returns a new map with the selected keys and the values from the original map.

```
Osiris.Map.selective_reduce([:one, :two, :three], %{one: "foo", two: "bar", three: "zap", password: "sekreit"})
%{one: "foo", two: "bar", three: "zap"}
```

## Lists

### Filter nil entries

```
Osiris.List.filter_nil(["one", "two", nil, "three"])
["one, "two", "three"]
```
