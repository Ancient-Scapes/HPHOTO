# Hphoto

### Hyper photo harvest optimization in twitter 

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