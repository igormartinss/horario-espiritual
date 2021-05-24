enum Type { proposito, deus, proximo, consigo, mundo }

class HorarioEspiritualModel {
  final String title;
  final Type type;
  final bool isDone;

  HorarioEspiritualModel(
      {required this.title, required this.type, this.isDone = false});

  static List<HorarioEspiritualModel> getMock() {
    return <HorarioEspiritualModel>[
      HorarioEspiritualModel(
          title: "Acordar cedo", type: Type.consigo, isDone: true),
      HorarioEspiritualModel(
          title: "Lorem Ipsum Dolor Sit Amet", type: Type.deus, isDone: true),
      HorarioEspiritualModel(
          title: "Lorem Ipsum Dolor Sit Amet", type: Type.mundo, isDone: false),
      HorarioEspiritualModel(
          title: "Lorem Ipsum Dolor Sit Amet", type: Type.deus, isDone: true),
      HorarioEspiritualModel(
          title: "Lorem Ipsum Dolor Sit Amet",
          type: Type.proposito,
          isDone: false)
    ];
  }

  static String getType(Type type) {
    String ret;
    type == Type.proposito
        ? ret = 'Propósito Pessoal'
        : type == Type.deus
            ? ret = 'Com Deus'
            : type == Type.proximo
                ? ret = 'Com o Próximo'
                : type == Type.consigo
                    ? ret = 'Consigo Mesmo'
                    : ret = 'Com o Mundo';
    return ret;
  }
}
