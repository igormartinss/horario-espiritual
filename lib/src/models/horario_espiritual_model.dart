enum Type { proposito, deus, proximo, consigo, mundo }

class HorarioEspiritualModel {
  final String title;
  final Type type;
  final bool isDone;

  HorarioEspiritualModel(
      {required this.title, required this.type, this.isDone = false});
}
