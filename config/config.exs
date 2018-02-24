# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :lighthouse, LighthouseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "S4fna5XuJe9OHovm2b0s+wxGvBbQRhuX9SPpNGuYYw3Qif/T70YM1EA52FL+gfR2",
  render_errors: [view: LighthouseWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lighthouse.PubSub,
           adapter: Phoenix.PubSub.PG2],
  server: true,
  root: ".",
  version: Application.spec(:phoenix_distillery, :vsn)

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
