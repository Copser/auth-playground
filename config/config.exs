# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :auth,
  ecto_repos: [Auth.Repo]

# Configures the endpoint
config :auth, AuthWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1oRo+NbpCDBqlakmkIOjvDglK9Gofad6khBXPHPJdwBswwqPIa8do55Vm1o+U/wK",
  render_errors: [view: AuthWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Auth.PubSub,
  live_view: [signing_salt: "2gQx9aDI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# TODO: Add API key later
config :auth, Auth.Mailer,
  adapter: Swoosh.Adapters.Postmark,
  api_key: "4ac46e9c-2f37-44e7-a0f2-2bbf479cc947"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
