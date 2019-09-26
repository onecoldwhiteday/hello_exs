defmodule HelloWeb.PageController do
  use HelloWeb, :controller
  alias Hello.Events

  def index(conn, _params) do
    events = Events.list_future_events()
    render conn, "index.html", events: events
  end
end
