defmodule :"#{Application.fetch_env!(:railway_ipc, :repo)}.Migrations.CreateRailwayIpcPublishedMessages" do
  use Ecto.Migration

  def change do
    create table(:railway_ipc_published_messages, primary_key: false) do
      add :uuid, :uuid, primary_key: true
      add :message_type, :string, null: false
      add :user_uuid, :uuid
      add :correlation_id, :uuid
      add :encoded_message, :text, null: false
      add :status, :string, null: false
      add :queue, :string
      add :exchange, :string
      timestamps()
    end
  end
end
