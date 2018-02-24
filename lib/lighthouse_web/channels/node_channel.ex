defmodule LighthouseWeb.NodeChannel do
  use Phoenix.Channel

  def join("node:event", _message, socket) do
    {:ok, socket}
  end

  def join("node:" <> _private_room_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end

  def handle_in("nodes:updated", %{"body" => body}, socket) do
    broadcast! socket, "updated", %{body: body}
    {:noreply, socket}
  end
end
