import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/repositories/story/story_repository.dart';

class StoryRepositoryMock extends StoryRepository {
  StoryRepositoryMock(
    this.ref,
  ) : super(ref);

  @override
  final ProviderRef<StoryRepository> ref;

  @override
  Future<String> createStory({
    required String genre,
    required String keyWord,
    required String character,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 3));
    return '''
イルカンドラは、アイルランドの街に住む猫の魔法使いだった。彼女は小さな姿ながら、その魔法で人や動物たちを癒し、街に安らぎを与えていた。 ある日、イルカンドラの元に一人の少女が現れた。少女は猫に変身できる能力を持っており、自らを助けるためにイルカンドラの力を借りたいと頼み込んだ。 イルカンドラは少女の涙に心を動かされ、彼女のために魔法を使うことを決めた。しかし、少女には大きな秘密が隠されており、それを知ったイルカンドラは…。 【承】 少女が持っていた秘密とは、彼女が発見した不思議な石だった。その石は、古代の魔法に関わるものであり、持ち主に強大な力を与えることができた。 しかし、その力を手にしたものは、やがて狂気に蝕まれてしまう。少女は、自らの命を犠牲にして、その石を魔法の島に封印することを誓った。 イルカンドラは少女の決断を尊重し、封印を手伝うことにした。しかし、石を封印するために必要な魔法はとても危険なものだった。彼女は最も強力な魔法を使い、石を島に封印することに成功する。と同時に、少女は命を落とした。 それから数日が過ぎ、街には不吉な雰囲気が漂うようになった。イルカンドラは、石が封印された影響であると考え、調査に乗り出す。すると、彼女は街にある古い神殿にたどり着いた。 神殿には、石と同じようなものが祀られていた。それを見たイルカンドラは、この石が複製であると気づいた。もしかしたら、この石を手に入れた者が、島に封印された石を解放してしまうかもしれない。 イルカンドラは、石を持ち帰って手放すことを決めた。しかし、それを知った神殿の管理人が、イルカンドラに向かって攻撃を仕掛けてきた。彼女は自分の魔法で応戦するが、彼女には危機を乗り越えるための力がまだ足りなかった。 (C1) 【転】 イルカンドラは激しい戦いの中で、自分の魔法だけでは勝つことができないことに気づいた。彼女は、少女からもらったお守りを取り出しながら、心の中で祈りを捧げた。 すると、そのお守りが輝き始めた。光の粒子が舞い上がり、イルカンドラを覆った。イルカンドラは全身に力を感じ、それまでの自分では想像もつかないような魔法を使うことができた。 イルカンドラは、力強く神殿の管理人に魔法を掛けた。彼は、強大な力に圧倒され、石を手放すことを余儀なくされた。イルカンドラは石を手に入れ、再び封印するため島に旅立った。 【結】 イルカンドラは島にたどり着くと、再び石を封印した。これで少女の命と街の平和が守られることになった。 イルカンドラは、彼女の力を手に入れたことで、魔法使いとしてさらに成長し、街の人々に尊敬される存在になった。また、彼女は少女の命を救えなかったことを取り戻すため、彼女が愛した猫をその後引き取った。 イルカンドラは、魔法の島で封印された石に対する責任を感じ、これからも島を守り、石が封印されたままであることを願っていた。そして、彼女は、いつかまた少女と再会できることを願いながら、猫たちと一緒に街の人々を癒し続けた。 (C1) 【結】 イルカンドラは、魔法の島を守りながら、街の人々にも魔法で癒しを与えた。彼女が無邪気な子供たちに魔法を教えているところを見ると、誰もが幸せそうな表情をしていた。 ある日、イルカンドラはその場にいた少女が、自分が助けた少女であることに気づいた。彼女は、少女を思いやりながら、彼女に何があったのか話を聞いた。すると、彼女はイルカンドラに感謝しながら、自らの持つ魔法の力を駆使して、少女を助けたことがあると話した。 イルカンドラは、その時初めて自分が本当に影響を与えられたことを知った。彼女は、静かに幸せを感じながら、猫たちと一緒に、街を見守り続けた。 そして、数十年後、イルカンドラは老いて眠りについた。しかし、彼女の魔法の力は彼女の聖域で生き続けていた。街の人々は、彼女の魔法の力を神聖なものと考え、彼女の遺産を受け継いでいった。 イルカンドラが眠る彼女の聖域には、彼女の猫たちが缶詰めと一緒に置かれていると言われている。そして、イルカンドラの猫たちは、彼女が生きた時と同じように、時折街を散歩して、人々を癒し続けていると言われている。 イルカンドラの生涯は、魔法の力で無数の人たちの命を救ったことから、名声を得た。彼女の故郷であるアイルランドでは、彼女の功績を称え、「猫の魔法使い」として語り継がれている。
''';
  }
}