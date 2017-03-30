# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :your_app,
  ecto_repos: [YourApp.Repo]

# Configures the endpoint
config :your_app, YourApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cEQJ7V9eSNtisn1kQ4Jx5QOWH5MQf+BcHEm0EkAa1awUt7qxQMnYnzABH/ezkoTD",
  render_errors: [view: YourApp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: YourApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
