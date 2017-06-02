defmodule PhilColumns.Mixfile do
  use Mix.Project

  def project do
    [app: :phil_columns,
     version: "0.9.0",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp description do
    """
    A full featured Elixir/Ecto seeding solution providing means for dev and prod seeding.
    """
  end

  defp package do
    [
      name: :phil_columns,
      files: [
        "lib",
        "mix.exs",
        "README*",
        "LICENSE*"
      ],
      maintainers: ["C. Jason Harrelson"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/midas/phil_columns-ex",
        "Docs" => "https://hexdocs.pm/phil_columns/0.5.2"
      }
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      mod: {PhilColumns, []},
      applications: [
        :logger
      ]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ecto, "~> 2.0"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:inflex, "~> 1.6"}
    ]
  end
end
