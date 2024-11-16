defmodule FruitsWeb.FruitsController do
  use FruitsWeb, :controller

  def index(conn, _params) do
    conn
    |> json(%{fruits: [ "apple", "banana", "cherry" ]})
  end
end
