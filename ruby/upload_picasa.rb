#!/usr/bin/env ruby
# Picasaへアップロード
`google picasa post Futurismo #{ARGV[0]}`

# URLを取得
url = `google picasa list --fields=url-direct|grep #{ARGV[0]}`

# 標準出力にimgのURL出力
img = "<img src=\"" + url.chop + "\">"
puts img
