defmodule EchoServer do
  @moduledoc """
  Checking connection between process.
  """

  @doc"""
    Start the server
    Examples

    iex> EchoServer.start()
  """
  def start do
    loop()
  end

  @doc"""
    Sending :ping signal to target PID

    Examples

    iex> EchoServer.ping(pid)
    {:pong, node}

    iex> EchoServer.ping(unknown_pid)
    :pang
  """
  def ping(server_pid) do
    send(server_pid, {:ping, self()})

    receive do
      {:pong, from_node} -> {:pong, from_node}
      after 2000 -> :pang
    end
  end

  defp loop do
    receive do
      {:ping, sender} -> send(sender, {:pong, node()})
    end
  end
end
