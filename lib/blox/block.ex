defmodule Block do
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
end