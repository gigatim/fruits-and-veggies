defmodule Proxy.Proxy do
  use MainProxy.Proxy

  @impl MainProxy.Proxy
  def backends do
    [
      %{
        domain: "fruits.gigalixir.com",
        phoenix_endpoint: FruitsWeb.Endpoint
      },
      %{
        domain: "veggies.gigalixir.com",
        phoenix_endpoint: VeggiesWeb.Endpoint
      },
    ]
  end
end
