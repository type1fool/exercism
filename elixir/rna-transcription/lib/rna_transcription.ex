defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> Enum.map(&translate_char/1)
  end

  defp translate_char(67), do: 71
  defp translate_char(71), do: 67
  defp translate_char(84), do: 65
  defp translate_char(65), do: 85
end
