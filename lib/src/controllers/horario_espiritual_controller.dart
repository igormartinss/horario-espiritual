import 'package:horario_espiritual/src/models/horario_espiritual_model.dart';

class HorarioEspiritualController {
  List<HorarioEspiritualModel>? horariosEspirituais;

  HorarioEspiritualController() {
    horariosEspirituais = HorarioEspiritualModel.getMock();
  }

  List<HorarioEspiritualModel> groupTypes(
      List<HorarioEspiritualModel> horarios) {
    horarios.sort((a, b) {
      return a.type.index.compareTo(b.type.index);
    });

    return horarios;
  }
}
