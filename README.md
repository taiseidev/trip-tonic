# trip_tonic

App name: TripTonic

TripTonic - The name "TripTonic" is derived from the word "Tonic", which means "the energy source of travel", plus "AI that supports travel".

## 開発の目的・背景・狙い
このモバイルアプリは、地図上のマーカーをタップすることで、ChatGPTによって生成された短編小説を読むことができるアプリケーションです。開発の目的、背景、および狙いは以下の通りです。

### 目的
・旅行者の暇つぶし<br>
・旅行の楽しみをプラス<br>
・個人開発を通して技術力の向上<br>

### 背景
・旅行中の移動時間を楽しく過ごしたいというニーズに応えたい<br>
・ポートフォリオとして個人の開発力をアピールしたい<br>
・ChatGPTのAPIを実際に使用してみたいという好奇心<br>

### 狙い
・収益化を通じてビジネスチャンスをつかむ<br>
・旅行者に新たな楽しみを提供し、満足度を向上させる<br><br>

アプリは、旅行者が暇つぶしや移動時間の楽しみを増やすために開発しています。さらに、個人開発を通じて技術力の向上を図ることも目的としています。旅行中にアプリを利用して地図上のマーカーをタップすることで、その場所に関連した短編小説を楽しむことができるため、旅行者の満足度が向上することが期待されます。また、収益化を狙いとしており、旅の楽しみをプラスすることで、ユーザーからの支持を集めることが狙いです。

## 機能一覧
|  機能名  |  説明  |
| ---- | ---- |
|  会員登録機能  |  FirebaseAuthenticationを使用してユーザ管理を行う。  |
|  小説閲覧機能  |  マップ上に表示されるマーカをタップすることによってChatGPTで生成された短編小説を見ることができる。  |
|  お気に入り機能  |  閲覧した小説をお気に入り登録することができる。  |
|  履歴機能  |  過去に参照した短編小説の履歴を確認することができる。  |
|  お知らせ機能  |  アプリ内の通知または運営からのお知らせ（ニュース）を確認することができる。  |
|  共有機能  |  小説をSNS等で共有することができる。  |
|  タイムライン機能  |  生成された小説が一覧で表示される（公開・非公開を設定可能に）  |


### お気に入り機能
v1: 作成された小説をお気に入り登録することができる。
v2: タイムライン（v1では実装しない予定）上に表示される小説に対してもお気に入り可能。
お気に入りされている数も表示する。

## アーキテクチャ

アーキテクチャ図を作成する予定

### 参考
https://codewithandrea.com/articles/flutter-project-structure/
https://medium.com/flutter-jp/architecture-240d3c56b597
https://github.com/tomamoi/todo_app
