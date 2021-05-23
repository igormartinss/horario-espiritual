import 'package:flutter/material.dart';
import 'package:horario_espiritual/src/components/vinculation_item_widget.dart';
import 'package:horario_espiritual/src/components/vinculation_option_widget.dart';
import 'package:horario_espiritual/src/controllers/horario_espiritual_controller.dart';
import 'package:horario_espiritual/src/models/horario_espiritual_model.dart';
import 'package:horario_espiritual/src/shared/app_colors.dart';

class HomeView extends StatelessWidget {
  final horarioEspiritualController = HorarioEspiritualController();

  @override
  Widget build(BuildContext context) {
    List<HorarioEspiritualModel> list =
        horarioEspiritualController.horariosEspirituais!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text(
          "Horário Espiritual",
          style: TextStyle(color: AppColors.blue),
        ),
      ),
      body: Column(
        children: [
          VinculationOptionWidget(),
          VinculationItemWidget(
            horariosEspirituais: [...list],
          )
        ],
      ),
    );
  }
}
