defmodule BasicMathOperations.CLI do
  @retangule_opts [length: :integer, width: :integer]
  @square_opts [length: :integer]

  def main(args \\ []) do
    args
    |> parse_args()
    |> response()
  end

  defp parse_args(args) do
    {opts, _, _} =
      args
      |> OptionParser.parse(switches: [type: :string])

    opts
    |> Keyword.get(:type)
    |> parse_args(args)
  end

  defp parse_args("retangule", args) do
    {opts, _, _} =
      args
      |> OptionParser.parse(switches: @retangule_opts)

    width = Keyword.get(opts, :width)
    length = Keyword.get(opts, :length)

    width * length
  end

  defp parse_args("square", args) do
    {opts, _, _} =
      args
      |> OptionParser.parse(switches: @square_opts)

    length = Keyword.get(opts, :length)

    length * length
  end

  defp response(value), do: IO.inspect(value)
end
