defmodule RearrangerTest do
  use ExUnit.Case

  test "empty string can be rearragned into empty string" do
    assert Rearranger.rearranges?("", "")
  end

  test "anything can be rearranged into empty string" do
    assert Rearranger.rearranges?(random_string(5), "")
  end

  test "empty string can't be rearranged into non empty one" do
    refute Rearranger.rearranges?("", random_string(5))
  end

  test "can't rearrange shorter string into a longer one" do
    refute Rearranger.rearranges?(random_string(5), random_string(10))
  end

  test "long string can't be rearranged into short one when it is from different characters" do
    refute Rearranger.rearranges?("bcdefghijklmno", "a")
  end

  test "works with unicode" do
    assert Rearranger.rearranges?("ąęśćżźł", "łśćżąę")
  end

  defp random_string(length) do
    :crypto.strong_rand_bytes(length)
  end
end
