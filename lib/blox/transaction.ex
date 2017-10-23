defmodule Transaction do
  defstruct [:sender, :recipient, :value]

  def new(sndr, rcpt, val) do
    %Transaction{
                  sender: sndr, 
                  recipient: rcpt, 
                  value: val
                }
  end
end