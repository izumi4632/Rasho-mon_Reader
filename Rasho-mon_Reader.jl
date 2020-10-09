using HTTP,StringEncodings
url="https://www.aozora.gr.jp/cards/000879/files/128_15261.html"
# ページの取得
page=HTTP.get(url)
# 日本語にデコード
txt=decode(page.body,"Shift_JIS")
# 正規表現のパターンを作成
rx=r"<rb>(.+?)</rb><rp>（</rp><rt>(.+?)</rt>"
# 抽出したものをプリント
for i∈eachmatch(rx,txt) println(i[1],"：",i[2]) end