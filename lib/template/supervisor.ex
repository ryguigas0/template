defmodule Template.Supervisor do
  @moduledoc """
  Consumer initializer
  """
  use Supervisor

  def start_link(args) do
    Supervisor.start_link(__MODULE__, args, name: __MODULE__)
  end

  @impl true
  def init(_args) do
    children = [
      Template.Consumer
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
