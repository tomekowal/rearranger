defmodule RearrangerWeb.RearrangerLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <form phx-change="check_rearrangement">
      <input type="text" name="string1" value="<%= @string1 %>">
      <input type="text" name="string2" value="<%= @string2 %>">
      <%= if @rearranges? do %>
        <p><%= "a subset of '#{@string1}' can be rearranged into '#{@string2}'" %></p>
      <% else %>
        <p><%= "a subset of '#{@string1}' can not be rearranged into '#{@string2}'" %></p>
      <% end %>
    </form>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, rearranges?: true, string1: "", string2: "")}
  end

  def handle_event("check_rearrangement", %{"string1" => string1, "string2" => string2}, socket) do
    rearranges? = Rearranger.rearranges?(string1, string2)
    {:noreply, assign(socket, string1: string1, string2: string2, rearranges?: rearranges?)}
  end
end
