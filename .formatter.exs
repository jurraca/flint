# Used by "mix format"
locals_without_parens = [
  # Type
  deftype: 2,
  # Schema
  field!: 1,
  field!: 2,
  field!: 3,
  embeds_one!: 2,
  embeds_one!: 3,
  embeds_one!: 4,
  embeds_many!: 2,
  embeds_many!: 3,
  embeds_many!: 4,
  # Extensions (Spark)
  attribute: 1,
  attribute: 2,
  option: 1,
  option: 2
]

[
  inputs: ["{mix,.formatter}.exs", "{config,lib,test}/**/*.{ex,exs}"],
  import_deps: [:ecto],
  locals_without_parens: locals_without_parens,
  plugins: [Spark.Formatter],
  export: [
    locals_without_parens: locals_without_parens
  ]
]
