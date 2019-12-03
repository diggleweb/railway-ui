defmodule RailwayUiWeb.MessageView do
  use RailwayUiWeb, :view

  def pagination_params(%{value: nil}, page_num) do
    %{page: page_num}
  end

  def pagination_params(search_params, page_num) do
    Map.merge(%{search: Map.from_struct(search_params)}, %{page: page_num})
  end

  def decode_message_body(nil), do: nil

  def decode_message_body(message_body) do
    inspect(Jason.decode!(message_body))
  end
end
