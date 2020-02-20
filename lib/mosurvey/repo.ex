defmodule Mosurvey.Repo do
  use Ecto.Repo,
    otp_app: :mosurvey,
    adapter: Ecto.Adapters.Postgres
end
