# novel journey

とりあえず気になったことやメモ書きはここに追加していく。

## 開発の背景・狙い
このモバイルアプリは、ChatGPTのAPIを使ってユーザが自由に小説を作成し、公開することができるアプリです。開発の目的、背景、および狙いは以下の通りです。

### 背景
・ポートフォリオとして個人の開発力をアピールしたい<br>
・ChatGPTのAPIを実際に使用してみたいという好奇心<br>

### 狙い
・あわよくば収益化<br>
・ポートフォリオとして活用<br><br>


### 考えること
・世界観

参考）四コマ部

## 機能一覧
|  機能名  |  説明  |
| ---- | ---- |
|  会員登録機能  |  FirebaseAuthenticationを使用してユーザ管理を行う。  |
|  小説作成機能  |  ユーザが必要項目を入力して、ChatGPTのAPIを使って自動で小説を生成する。  |
|  小説閲覧機能  |  ユーザが必要項目を入力して、ChatGPTのAPIを使って自動で小説を生成する。  |
|  小説編集機能  |  自動で生成された小説を自分好みにアレンジすることができる。  |
|  小説削除機能  |  作成した小説を削除する。  |
|  タイムライン機能  |  生成された小説が一覧で表示される（公開・非公開を設定可能に）  |
|  お気に入り機能  |  閲覧した小説をお気に入り登録することができる。  |
|  コメント機能  |  小説にコメントを残すことができる  |
|  履歴機能  |  過去に参照した短編小説の履歴を確認することができる。  |
|  お知らせ機能  |  アプリ内の通知または運営からのお知らせ（ニュース）を確認することができる。  |
|  共有機能  |  小説をSNS等で共有することができる。  |
|  ランキング機能  |  人気のある（いいね数が多い）小説を表示する  |
|  プレミアムプラン  |  全ての機能が使える  |

### 会員登録機能

FirebaseAuth
https://firebase.google.com/docs/auth/flutter/start?hl=ja#connect_your_app_to_firebase

・匿名認証
匿名認証は機能を制限する

TODO: 使えるの機能の一覧を追加する

・google認証
https://pub.dev/packages/google_sign_in

- Apple認証
https://pub.dev/packages/sign_in_with_apple

### 小説作成機能
[ChatGPT API](https://chat.openai.com/chat?model=gpt-4)を利用して、ユーザが入力した項目に合わせた小説を作成する。（プロンプトをすぐに修正できるようChatGPTのAPIはバックエンド側で叩く）

プロンプトは下記の通り。（精度を上げるために適宜修正を加えていく）

```
# ゴール
あなたは芥川賞や直木賞といった文学賞を受賞するほどの実力を持つ小説家です。
与えられた情報を元に、誰もが没入できるような小説を作成していください。

# 変数
[登場人物]：{登場人物の変数(複数指定可能)}
[キーワード]：{ユーザが入れたいキーワードを指定（複数指定可能）}
[ジャンル]：{小説のジャンルを指定。Firestoreにジャンルを保存し、ドロップダウン形式で選択可能に}
[舞台]：「ジャンル」から連想される場所（ex: 和風ホラー => 日本の不気味な古民家）
[起承転結]：起承転結は、物語や論説の流れを読み手にわかりやすく伝えるために重要な役割を果たします。起：物語や論説の最初の部分で、背景や登場人物の紹介、問題提起などが行われます。承：物語や論説の展開部分で、問題が発生し、登場人物がそれに取り組む様子が描かれます。転：物語や論説の展開部分で、物語や論説が一変し、新たな展開が生まれます。結：物語や論説の最後の部分で、問題が解決され、結末が描かれます。

[C1]：[キーワード]と[ジャンル]から連想される小説のタイトルを考えてください。
[C2]：[登場人物]、[キーワード]、[ジャンル]、[舞台]の情報を元に、具体的で想像がつきやすいような小説を作成してください。

# 条件
小説の出力の形式は4回に分けて行い、[起承転結]がある作品を作成します。。今回の出力では[起承転結]の「起」の部分の小説を500字程度で作成してください。

> Run commands [C1] [C2]

```

上記のプロンプトを入力後、[承]、[転]、[結]を作成するプロンプトを入力し、章を結合して返却。
2回目以降のプロンプトは下記の通り。

```
[起]の続きである[承]を500字程度で作成してください。
```

上記のプロンプトを繰り返す。

TODO: APIの仕様上料金が高くなりそうな設計になっているので改善策を考える。

|  権限  |  制限  |
| ---- | ---- |
|  匿名認証  |  小説作成不可  |
|  無料会員  |  1日3回まで（APIの料金次第で変更する）  |
|  有料会員  |  無制限  |

### 小説閲覧機能
作成した小説を閲覧することができる。

小説閲覧中に指定したジャンルにあった音源を流す。
https://bgmer.net/
（TODO: ライセンス表記必須）

ジャンルと音源は先に決めておいて、その音源を流す。

### 小説編集機能
作成された小説を編集することができる。

### タイムライン機能
作成されたタイムラインを一覧で表示する。

### お気に入り機能
小説にお気に入りをすることができる。

### コメント機能
小説にコメントを追加することができる。
メンションやスタンプを押すことができるようにする。

### 履歴機能
作成した小説を履歴として一覧で表示する。

### お知らせ機能
アプリまたは運営からのお知らせを受け取ることができる。

アプリからのお知らせ：コメント、いいね、ランキング入賞
運営からのお知らせ：アップデート、イベント

### 共有機能
SNS（Twitter、Facebook、Instagram等のソーシャルネットワークサービス）に共有することができる。

### ランキング機能
いいね数が多い小説を表彰する。

・全小説
・ジャンル別

### プレミアムプラン
月額300円のサブスクにする。
全ての機能を無制限に解放する。


## アーキテクチャ

アーキテクチャ図を作成する予定

### infrastructure
1. Separation of Concerns (SoC): アプリケーションの各層は、それぞれの責任を持つべきです。infrastructure層はデータアクセスや外部サービスとの通信を担当し、Firebaseを含む具体的な実装を行います。他の層は、Firebaseに依存せずに機能すべきです。

2. 交換可能性: infrastructure層にFirebaseの依存を閉じ込めることで、将来的にデータストレージやAPIが変更された場合に、他の層に影響を与えずにinfrastructure層の実装を変更できます。これにより、アプリケーションの柔軟性が向上します。

3. テストの容易性: Firebaseの依存をinfrastructure層に限定することで、domain層やapp層のテストが容易になります。具体的なデータアクセス実装に依存しないため、モックやスタブを使用して、ビジネスロジックやUIの正確性を確認できます。

4. 再利用性: Firebaseの依存をinfrastructure層に閉じ込めることで、domain層やapp層のコードが他のプロジェクトやコンテキストで再利用しやすくなります。具体的なデータストレージやAPIの実装から独立しているため、他のシステムに適応させることが容易になります。


### 参考
https://codewithandrea.com/articles/flutter-project-structure/
https://medium.com/flutter-jp/architecture-240d3c56b597
https://github.com/tomamoi/todo_app


## API

・画像を自動で生成
https://www.midjourney.com/home/?callbackUrl=%2Fapp%2F

・ジオコーディングと陸地の座標を判別
https://operations.osmfoundation.org/policies/nominatim/
