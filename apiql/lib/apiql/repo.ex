defmodule Apiql.Repo do
  use Ecto.Repo,
    otp_app: :apiql,
    adapter: Ecto.Adapters.Postgres
end
