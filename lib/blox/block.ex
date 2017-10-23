defmodule Block do
  @derive [Poison.Encoder]
  defstruct [:index, 
             :timestamp, 
             :transactions, 
             :proof, 
             :previous ]
  
  def new do
    %Block{ 
            transactions: [], 
            timestamp: DateTime.utc_now |> DateTime.to_unix,
          }
  end

  def hash(block) do
    block
    |> Poison.encode!()
    |> _hash()
    |> IO.puts
  end

  def _hash(block) do
    :crypto.hash(:sha256, block)
    |> Base.encode16()
  end
end