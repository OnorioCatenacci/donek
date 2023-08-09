defmodule DonekWeb.NewTableDefinitionLive do
  use DonekWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <header class="font-mono uppercase text-4xl font-bold text-center text-green-500 w-full">New Table Definition</header>
    <div class="columns-2 font-mono py-4">
    <div>
      <label for="table_name">Table Name</label>
      <input id="table_name" type="text" />
    </div>
    <div>
      <label for="table_description">Table Description</label>
      <input id="table_description" type="text" />
    </div>
    <div>
      <label for="field_name">Field Name</label>
      <input id="field_name" type="text" />
    </div>
    </div>
    """
  end
end
