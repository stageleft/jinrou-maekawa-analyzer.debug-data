# about about Jinrou-Maekawa-Analyzer debug tool and data （Jinrou-Maekawa-Analyzer 向けデバッグツール・データ）

debug data set of [Jinrou Maekawa Analyzer](https://github.com/stageleft/jinrou-maekawa-analyzer).

[Jinrou Maekawa Analyzer](https://github.com/stageleft/jinrou-maekawa-analyzer) のデバッグに有用な、村の過去ログ一式です。

## Support Language （対応言語）

Japanese only, because Jinrousiki Application can support only Japanese.

前川鯖で使っている人狼式PHPが日本語なので、日本語以外対応しません。あしからず。

## 作り方：ログの作成（HTML Capture利用）

1. 村に参加する。
   [HTML Capture](https://addons.mozilla.org/ja/firefox/addon/html-capture/) を起動する。
1. 村終了後、ログを取得する。
   上記ツールをキャプチャする。

## 使い方：ログの作成（Jinrou Maekawa Analyzer利用）

1. 村に参加する。
   Jinrou Maekawa Analyzer を起動する。
1. 村終了後、ログを取得する。  
   Firefox の about:debugging → 左メニュー「このFirefox」 → 拡張機能・Jinrou Maekawa analyzer の「調査」  
   ストレージ → ローカルストレージ → maekawa_village_raw_log → パース済みの値 → 村番号 → 日付のログ  
   を各々コピー、テキストファイルに保存する。
   1. あらかじめ、VSCode の bash Terminal から、以下のコマンドにて、0byteのテキストファイルを生成しておくと作業が容易となる。  
   `./create_org_village_template.sh 村番号`
1. ログを整形する。
   上記で保存したログは、 ○○日めの■になりました。:"HTMLログ全体" の書式となっている。
   1. 各々、"HTMLログ全体"の部分だけ抜き出し（ダブルクォーテーションは外し）、完全なHTMLファイルとして保存する。
   2. 以下のタグを外しておくと、後で分析しやすくなる。（つけたままでもほとんどの場合問題ない。作業の手間がかかるので、外さなくてもよい）
   `<meta http-equiv="Refresh" content="xx">`

## 使い方：ログの使用

   作成したログを各々ブラウザで見る。
   Githubのrawデータとしては見れないっぽい。

## サンプル説明

### sample/544-kansen/\*.html

http://alicegame.xsrv.jp/takane/old_log.php?room_no=544&db_no=1 【モバマス】Alice Re:Code村 より、観戦者のログ。

## （参考）サンプル以外に確認しておきたいログ （配役関係）
