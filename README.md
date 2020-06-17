# TWITTER-PHOTO-SAVE-IMAGES

## description

## Setup

```zsh
mix deps.get
```

Please Set Your Twitter API Key.

### config/config.exs

```elixir
config :extwitter, :oauth, [
  consumer_key: "YOUR_CONSUMER_KEY",
  consumer_secret: "YOUR_CONSUMER_SECRET",
  access_token: "YOUR_ACCESS_TOKEN",
  access_token_secret: "YOUR_ACCESS_TOKEN_SECRET"
]
```

### your list select

please type your list name, or ID.

## Usage

```zsh
mix run -e "Hphoto.main"
```

## flow

1. fetch tweets in your select list.
2. filter fetch tweets only Image tweets. 
3. get array by extraction image path.
4. download images

## TODO

- R18 image filter.
- execute everyday by machine.


## dir list (example)
yyyyMMdd
|_list5
|  |_ @_Ancient_Scaeps:text_52437429423423.png
|  |_ @_Ancient_Scaeps:text2_5452493242355.png
|
|_list6
|  |_ @_Ancient_Scaeps:text_52437429423423.png
|  |_ @_Ancient_Scaeps:text2_5452493242355.png

## memo

### 出力
- 開始時
  - 🐥 ユーザー名:リスト名のツイートをxxx件取得します。
- ツイート全取得時
  - 🔗 画像/動画コンテンツを含むツイートがxx件見つかりました。
- ダウンロード時
  - ⬇️ n/xx ダウンロード中
  - 📦 @_Ancient_Scapes:texttext
- 終了時
  - 👊 終了しました！
  - ⏱ 処理時間:
  
### 必須処理
- yyyymmddでディレクトリ作成
  - リスト名でディレクトリ作成
- リストの指定
- indicoで画像のフィルタリング
- RTメディアの検知
- 画像と動画のダウンロードで処理を分岐

### エラーハンドリング
- yyyymmddでディレクトリ作成時、既に存在すれば作らない
  - リスト名でディレクトリ作成時、既に存在すれば作らない
- 画像ダウンロード時、既に同盟の画像が存在する場合はダウンロードしない
- 

## 時間あればやるシリーズ

- いいね数、RT数でのフィルタリング
