defmodule Fruits.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      FruitsWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:fruits, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Fruits.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Fruits.Finch},
      # Start a worker by calling: Fruits.Worker.start_link(arg)
      # {Fruits.Worker, arg},
      # Start to serve requests, typically the last entry
      FruitsWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Fruits.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    FruitsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
