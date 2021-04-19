defmodule InmanaWeb.WellcomerController do
  use InmanaWeb, :controller
  alias Inmana.Wellcomer

  def index(conn, params) do
    params
    |> Wellcomer.welcome()
  end
end
