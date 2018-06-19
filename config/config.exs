# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :escolar,
  ecto_repos: [Escolar.Repo]

# Configures the endpoint
config :escolar, EscolarWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0oeKzlDF7MXQxouGr13UiI04x7q+JJIPhusfpltPa+gUMdhmFE0HrQ1SsDXKzVFu",
  render_errors: [view: EscolarWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Escolar.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
