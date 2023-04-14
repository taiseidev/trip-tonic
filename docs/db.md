## Firestore設計

| コレクション一覧 |  説明  |  パス  |
| ---- | ---- | ---- |
|  version  |  バージョンを管理  |   /versions  |
|  users  |  ユーザ情報を管理  |   /versions/users  |
|  notifications  |  いいね、コメント等個別のお知らせを管理  |   /version/users/notifications  |
|  readAnnouncements  |  （全体への）お知らせの既読情報を管理  |   /versions/users/readAnnouncements  |
|  followings  |  各ユーザのフォローを管理  |   /versions/users/users/followings  |
|  followers  |  各ユーザのフォロワーを管理  |  /versions/users/followers  |
|  novels  |  小説一覧を管理  |   /versions/novels  |
|  comments  |  各小説ごとのコメントを管理  |   /versions/novels/comments  |
|  favorites  |  全ユーザのお知らせを管理  |   /versions/favorites  |
|  genres  |  ジャンルを管理  |   /versions/genres  |
|  announcements  |  運営からのお知らせを管理  |   /versions/announcements  |

<br>

## version

ドキュメントIDにバージョンを持たせる (ex. v1)

<br>

## users
| フィールド名 |  型  |  説明  |
| ---- | ---- | ---- |
|  documentId  |  String  |  ドキュメントID  |
|  name  |  String  |  ユーザ名  |
|  iconUrl  |  String  |  ユーザアイコン  |
|  isPremiumMember  |  bool  |  有料会員かどうか  |
|  pushNotificationEnabled  |  bool  |  個別のお知らせを通知するかどうか  |
|  pushAnnouncementEnabled  |  bool  |  全体からのお知らせを通知するかどうか  |
|  createdAt  |  DateTime  |  作成日  |
|  updatedAt  |  DateTime  |  更新日  |

<br>

## notifications
| フィールド名 |  型  |  説明  |
| ---- | ---- | ---- |
|  documentId  |  String  |  ドキュメントID  |
|  title  |  String  |  お知らせのタイトル  |
|  content  |  String  |  お知らせの内容  |
|  isRead  |  bool  |  読んだかどうか  |
|  createdAt  |  DateTime  |  作成日  |

<br>

## readAnnouncements
| フィールド名 |  型  |  説明  |
| ---- | ---- | ---- |
|  documentId  |  String  |  ドキュメントID  |
|  announcementId  |  String  |  全体からのお知らせのID  |
|  createdAt  |  DateTime  |  作成日  |

<br>

## followings
| フィールド名 |  型  |  説明  |
| ---- | ---- | ---- |
|  documentId  |  String  |  ドキュメントID  |
|  followedUserId  |  String  |  フォローされているユーザのID  |
|  followedUserName  |  String  |  フォローされているユーザの名  |
|  followedUserIcon  |  bool  |  フォローされているユーザのアイコン  |
|  createdAt  |  DateTime  |  作成日  |

<br>

## followers
| フィールド名 |  型  |  説明  |
| ---- | ---- | ---- |
|  documentId  |  String  |  ドキュメントID  |
|  followerUserId  |  String  |  フォロワーのユーザID  |
|  followerUserName  |  String  |  フォロワーのユーザ名  |
|  followerUserIcon  |  bool  |  フォロワーのユーザアイコン  |
|  createdAt  |  DateTime  |  作成日  |

<br>

## novels
| フィールド名 |  型  |  説明  |
| ---- | ---- | ---- |
|  documentId  |  String  |  ドキュメントID  |
|  userId  |  String  |  ユーザID  |
|  genreId  |  String  |  ジャンルのID  |
|  title  |  bool  |  小説のタイトル  |
|  content  |  DateTime  |  小説の内容  |
|  isPrivate  |  String  |  タイムラインに公開するかどうか  |
|  backgroundImage  |  String  |  小説を表示する背景画像  |
|  createdAt  |  DateTime  |  作成日  |
|  updatedAt  |  DateTime  |  更新日  |

<br>

## comments
| フィールド名 |  型  |  説明  |
| ---- | ---- | ---- |
|  documentId  |  String  |  ドキュメントID  |
|  userId  |  String  |  ユーザID  |
|  content  |  String  |  コメント内容  |
|  createdAt  |  DateTime  |  作成日  |
|  updatedAt  |  DateTime  |  更新日  |

<br>

## favorites
| フィールド名 |  型  |  説明  |
| ---- | ---- | ---- |
|  documentId  |  String  |  ドキュメントID  |
|  userId  |  String  |  ユーザID  |
|  novelId  |  String  |  小説ID  |
|  createdAt  |  DateTime  |  作成日  |
|  updatedAt  |  DateTime  |  更新日  |

<br>

## genres
| フィールド名 |  型  |  説明  |
| ---- | ---- | ---- |
|  documentId  |  String  |  ドキュメントID  |
|  genre  |  String  |  ジャンルのタイトル  |
|  createdAt  |  DateTime  |  作成日  |
|  updatedAt  |  DateTime  |  更新日  |

<br>

## announcements
| フィールド名 |  型  |  説明  |
| ---- | ---- | ---- |
|  documentId  |  String  |  ドキュメントID  |
|  title  |  String  |  全体へのお知らせのタイトル  |
|  content  |  String  |  全体へのお知らせの内容  |
|  createdAt  |  DateTime  |  作成日  |
|  updatedAt  |  DateTime  |  更新日  |
