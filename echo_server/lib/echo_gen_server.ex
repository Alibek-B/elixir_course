defmodule EchoGenServer do
  use GenServer

  @doc"""
    Start GenServer

    Examples

    iex> EchoGenServer.start
    {:ok, node}
  """
  def start_link do
    GenServer.start_link(__MODULE__, nil, name: __MODULE__)
  end

  @doc"""
    Sending :ping signal to target PID

    Examples

    iex> EchoServer.ping(pid)
    {:pong, node}
  """
  def ping(pid) do
    GenServer.call(pid, :ping)
  end

  @impl true
  def init(state) do
    {:ok, state}
  end

  @impl true
  def handle_call(:ping, _from, state) do
    {:reply, {:pong, node()}, state}
  end
end
