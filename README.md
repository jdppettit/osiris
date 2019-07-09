# Osiris

Osiris is a suite of helper functions for personal Elixir projects.

## Maps

### Selective reduce

Takes a list of desired keys and a map with said keys and returns a new map with the selected keys and the values from the original map.

```
Osiris.Map.selective_reduce([:one, :two, :three], %{one: "foo", two: "bar", three: "zap", password: "sekreit"})
%{one: "foo", two: "bar", three: "zap"}
```

### Atomify keys

Takes a map and converts all non-atom keys to atoms.

```
Osiris.Map.atomify(%{"foo" => "bar", :zap => "foo"})
%{foo => "bar", zap => "foo"}
```

### Filter nil

Takes a map and returns a new map with only keys that have values *other than* `nil`

```
Osiris.Map.filter_nil(%{bar: "foo", zap: nil})
%{bar: "foo"}
```

### Get nested key

Safely get once or two nested keys from a map, will return `nil` if not present

```
Osiris.Map.get_nested_key(%{foo: %{bar: %{zap: "poof"}}}, :foo, :bar, :zap)
"poof"
```

```
Osiris.Map.get_nested_key(%{foo: %{bar: %{zap: "poof"}}}, :foo, :bar)
%{zap: "poof"}
```

```
Osiris.Map.get_nested_key(%{foo: %{bar: %{zap: "poof"}}}, :foo, :bar, :poof)
nil
```

## Lists

### Filter nil entries

Remove all entries from list that are equal to `nil`

```
Osiris.List.filter_nil(["one", "two", nil, "three"])
["one, "two", "three"]
```
