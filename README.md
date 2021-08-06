# about about Jinrou-Maekawa-Analyzer debug tool and data （Jinrou-Maekawa-Analyzer 向けデバッグツール・データ）

debug data set of [Jinrou-Maekawa-Analyzer](https://github.com/stageleft/jinrou-maekawa-analyzer).

[Jinrou-Maekawa-Analyzer](https://github.com/stageleft/jinrou-maekawa-analyzer) のデバッグに有用な、村の過去ログ一式です。

## Support Language （対応言語）

Japanese only, because Jinrousiki Application can support only Japanese.

前川鯖で使っている人狼式PHPが日本語なので、日本語以外対応しません。あしからず。

## 作り方：ログの作成（HTML Capture利用）

1. 村に参加する。
   [HTML Capture](https://addons.mozilla.org/ja/firefox/addon/html-capture/) を起動する。
1. 村終了後、ログを取得する。
   上記ツールをキャプチャする。

## 使い方：ログの作成（Jinrou-Maekawa-Analyzer利用）

本項目はT.B.D.である（Jinrou-Maekawa-Ananlyzerは未リリースである）。

1. 村に参加する。
   Jinrou-Maekawa-Analyzer を起動する。
1. 村終了後、ログを取得する。  
   Firefox の about:debugging → 左メニュー「このFirefox」 → 拡張機能・Jinrou Maekawa analyzer の「調査」  
   ストレージ → ローカルストレージ → maekawa_village_raw_log → パース済みの値 → 村番号 → 日付のログ  
   を各々コピー、テキストファイルに保存する。
   サンプル： org/\*/\*.txt
1. ログを整形する。
   整形手順は未定。
    1. 手作業の方法。
    1. 手元ツールの支援を受ける方法。
       1. ログの取得時、 VSCode の bash Terminal から、以下のコマンドにて、0byteのファイルを作成する。  
         `./create_org_village_template.sh 村番号`
       1. ログの整形時、VSCode の bash Terminal から、以下のコマンドを用いて手作業の内容を自動で変換する。  
         `./transform_debug_log.sh 村番号`

## 使い方：ログの使用

   作成したログを各々ブラウザで見る。
   Githubのrawデータとしては見れないっぽい。

## サンプル説明

### sample/544/\*.html

http://alicegame.xsrv.jp/takane/old_log.php?room_no=544&db_no=1 【モバマス】Alice Re:Code村 より、観戦者のログ。

## （参考）サンプル以外に確認しておきたいログ （配役関係）
