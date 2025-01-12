# 古跡巡訪スタンプラリー

## 概要
スタンプラリーで、神社をめぐるアプリ

## 参考画像
https://www.jinja-net.jp/stamp-takeru/TOP.html


## 起動コマンド

起動する際は、以下コマンドをターミナルで打ってください。
```
flutter run --dart-define-from-file=lib/app/configuration/develop/dart_defines_development.json
```


## Androidのリリース用ファイルの作成方法。
1. 以下コマンドをうつ
```
keytool -genkey -v -keystore ./key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```

```
キーストアのパスワードを入力してください:
新規パスワードを再入力してください: 
姓名は何ですか: ochiai
組織単位名は何ですか: co
組織名は何ですか: elnetwork
都市名または地域名は何ですか。: tokyo
都道府県名または州名は何ですか。: nagoya
この単位に該当する2文字の国コードは何ですか。: jp
```

2. 「key.jksファイル」が作成されるので、そのファイルをandroid/appフォルダ直下に配置。(slackで共有)
3. 「key.propertiesファイル」をandroid/フォルダ直下に配置。(slackで共有)
```
storePassword= {1で設定したパスワード}
keyPassword= {storePasswordと同じもの}
keyAlias= {アプリ名など 例)takeru_app}
storeFile=key.jks
```
4. 以下をandroid studioのターミナルを開いた場所で、叩く。

```
flutter build appbundle --release --dart-define-from-file=lib/app/configuration/production/dart_defines_production.json
```

5. build/app/outputs/bundle/release/app-release.aabの、「app-release.aab」が作成され、このファイルが著名付きアプリ。

6. Google Play Consoleに5で作成されたファイルをアップする。