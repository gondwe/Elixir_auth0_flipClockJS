# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :countdown,
  ecto_repos: [Countdown.Repo]

# Configures the endpoint
config :countdown, CountdownWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JS8sHzNohi6LX3N04lRrNr0qcSfN4vwtrGJf2TwOWNOvQCrevgjcPL9YsRXS0meH",
  render_errors: [view: CountdownWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Countdown.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]


  # Configures Ueberauth
config :ueberauth, Ueberauth,
  providers: [
    auth0: { Ueberauth.Strategy.Auth0, [] },
  ]

# Configures Ueberauth's Auth0 auth provider
config :ueberauth, Ueberauth.Strategy.Auth0.OAuth,
  domain: "dev-qoxi9zcw.auth0.com",
  # domain: System.get_env("AUTH0_DOMAIN"),
  client_id: "9H72V1BT9PEcTxoojhr97dcS3O1OnNu6",
  # client_id: System.get_env("AUTH0_CLIENT_ID"),
  client_secret: "byLNfrJ6Pi45ehHvIf2RjHmZX-M3lasUL7ROVWT87-X5miCq7AzvfmZFGs25GrkQ"
  # client_secret: System.get_env("AUTH0_CLIENT_SECRET")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
