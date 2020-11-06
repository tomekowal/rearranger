defmodule Rearranger do
  @moduledoc """
  Rearranger keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.

  1. Implement a function with 2 parameters (string1, string2) that return true if a portion of string1 characters can be rearranged to match string2, otherwise, return false
  2. Implement an API for this function in Phoenix
  3. Implement a UI that communicates with the backend. It contains a form for string1, string2, submit button, and label that shows true or false; the UI is implemented using LiveView
  """

  @spec rearranges?(String.t(), String.t()) :: boolean()
  def rearranges?(string1, string2) do
    codepoints1 = String.codepoints(string1)
    codepoints2 = String.codepoints(string2)
    # -- operator treats lists like sets
    # for each element of the list on the right, it will remove first occurrence of element from the left
    # if the operation removes all codepoints from string2
    # that means that codepoints1 had all letters from there
    # so a portion of that string can be rearranged into string2
    (codepoints2 -- codepoints1) == []
  end
end
