# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mosurvey,
  ecto_repos: [Mosurvey.Repo]

# Configures the endpoint
config :mosurvey, MosurveyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0QMrnsaJe6bCmaGdts/IfiPMVhk92as67PmCliaV+MaqP/zlgbFUXl84uLMYbtyA",
  render_errors: [view: MosurveyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mosurvey.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
