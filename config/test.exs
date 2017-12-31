use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lighthouse_service, LighthouseServiceWeb.Endpoint,
  http: [port: 9997],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
