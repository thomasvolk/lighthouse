defmodule LighthouseServiceWeb.NodeEventPublisher do
  use GenServer
  require Logger

  def start_link(channel) do
     GenServer.start_link(__MODULE__, {channel}, [name: __MODULE__])
  end

  def init(state) do
    Lightbulb.subscribe()
    {:ok, state }
  end

  def handle_info({:lightbulb_nodes_updated, _nodes}, {channel}) do
    Logger.debug "#{__MODULE__} send update"
    LighthouseServiceWeb.Endpoint.broadcast(channel, "updated", %{})
    {:noreply, {channel}}
  end
end
