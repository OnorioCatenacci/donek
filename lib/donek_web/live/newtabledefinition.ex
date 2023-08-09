defmodule DonekWeb.NewTableDefinitionLive do
  use DonekWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <header>New Table Definition</header>
    <section class="table_definition">
    <div>
      <label for="table_name">Table Name</label>
      <input id="table_name" type="text" />
    </div>
    <div>
      <label for="table_description">Table Description</label>
      <input id="table_description" type="text" />
    </div>
    </section>
    <section class="field_definitions">
    <div>
      <label for="field_name">Field Name</label>
      <input id="field_name" type="text" />
    </div>
    </section>
    """
  end
end
