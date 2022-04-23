import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :clubl_a_srv, ClublASrv.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "clubl_a_srv_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :clubl_a_srv, ClublASrvWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Nwuw/RnHYElYMjgmXweM6zuOK+IlISDkf7L1xp9PRfd+1S/ZuMVbU22XAQk9TfA0",
  server: false

# In test we don't send emails.
config :clubl_a_srv, ClublASrv.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
