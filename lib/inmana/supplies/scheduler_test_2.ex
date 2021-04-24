defmodule Inmana.Supplies.SchedulerTest2 do
  use GenServer

  def init(state \\ %{}) do
    {:ok, state}
  end

  def handle_info(msg, state) do
    IO.puts("RECEBI")
    {:noreply, state}
  end
end
