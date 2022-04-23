defmodule ClublASrv.Repo do
  use Ecto.Repo,
    otp_app: :clubl_a_srv,
    adapter: Ecto.Adapters.Postgres
end
