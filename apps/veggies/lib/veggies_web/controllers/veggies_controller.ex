defmodule VeggiesWeb.VeggiesController do
  use VeggiesWeb, :controller

  def index(conn, _params) do
    conn
    |> json(%{veggies: [ "carrot", "broccoli", "spinach" ]})
  end
end
