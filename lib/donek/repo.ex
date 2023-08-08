defmodule Donek.Repo do
  use Ecto.Repo,
    otp_app: :donek,
    adapter: Ecto.Adapters.Postgres
end
