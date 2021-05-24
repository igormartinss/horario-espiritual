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

    horarioEspiritualController.groupTypes(list);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.green,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text(
          "Horário Espiritual",
          style: TextStyle(
              color: AppColors.green,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 65,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              for (var item in Type.values) VinculationOptionWidget(type: item)
            ]),
          ),
          Expanded(
              child: VinculationItemWidget(
            horariosEspirituais: [...list],
          ))
        ],
      ),
    );
  }
}
