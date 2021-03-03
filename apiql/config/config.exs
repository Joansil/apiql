# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :apiql,
  ecto_repos: [Apiql.Repo]

# Configures the endpoint
config :apiql, ApiqlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6tAIDomFUlgv2axZMyFgxKfmbDBLEHxGWxQQKnrxmFBTMZw2W8snDoC3c3mHj7d0",
  render_errors: [view: ApiqlWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Apiql.PubSub,
  live_view: [signing_salt: "u/wFAVK3"]

config :apiql, Apiql.Guardian,
  issuer: "apiql",
  secret_key: "nbsInGm7fMBjRNu7Hv2t95+67VPXN3jdyDNdwBPVfVRmKFYalh+o+R1HHD5xsU1F"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
