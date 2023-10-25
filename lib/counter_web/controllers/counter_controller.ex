defmodule CounterWeb.CounterController do
  use CounterWeb, :controller

  def count(conn, params) do
    render(conn, :count, count: params["count"] || 0)
  end

  @doc """
  Increment the counter by 1
  """
  def increment(conn, params) do
    IO.inspect(params)
    current_count = String.to_integer(params["count"])
    increment_by = String.to_integer(params["increment_by"])
    IO.inspect(current_count)
    IO.inspect(increment_by)
    render(conn, :count, count: current_count + increment_by)
  end
end
