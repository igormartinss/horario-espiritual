import 'package:horario_espiritual/src/models/horario_espiritual_model.dart';

class HorarioEspiritualController {
  List<HorarioEspiritualModel>? horariosEspirituais;

  HorarioEspiritualController() {
    horariosEspirituais = HorarioEspiritualModel.getMock();
  }
}
