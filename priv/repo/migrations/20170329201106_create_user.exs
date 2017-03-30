defmodule YourApp.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :address, :string
      add :date_of_birth, :datetime
      add :number_of_children, :integer
      add :notifications_enabled, :boolean, default: false, null: false

      timestamps()
    end

  end
end
