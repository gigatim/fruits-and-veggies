import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :proxy, ProxyWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Bu5WnKaAwFZNAxWZlpC3nyS+FNaI6r5kVCTsYCOOYdOrg9x3froLGa0lgZmkQyAs",
  server: false

# In test we don't send emails
config :proxy, Proxy.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :veggies, VeggiesWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "QfbsOTxfCJ3bWeTBbPrtOGSpOCPy3GOgGlFJe+ariz3c5IlPbHEPzatc2bOOIIo8",
  server: false

# In test we don't send emails
config :veggies, Veggies.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :fruits, FruitsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "cbA+8LPAI7j0094PfzFmZNrTW9Gok6R1Igt2KLClaeSvGh/vwS25sgFArZNQe7VK",
  server: false

# In test we don't send emails
config :fruits, Fruits.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
