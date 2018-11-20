defmodule Hphoto do
  def main do
    fetchListTimeLine()
    |> Enum.each(fn (t) -> IO.inspect t end)
  end

  def fetchListTimeLine do
    # TODO リストの選択
    ExTwitter.list_timeline("list5", "_Ancient_Scapes", [count: 10])
    |> Enum.map(&(extractionTweet(&1)))
  end

  def extractionTweet(t) do
    if Map.has_key?(t.entities, :media) do
      %{
        "id" => t.id_str,
        "name" => "@" <> t.user.screen_name <> ":" <> t.user.name,
        "text" => t.text,
        "favorite_count" => t.favorite_count,
        "retweet_count" => t.retweet_count,
        "media" => t.entities.media |> Enum.map(&(extractionMedia(&1)))
      }
    end
  end

  def extractionMedia(m) do
    m.media_url
  end

end
