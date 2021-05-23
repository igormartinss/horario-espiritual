import 'package:flutter/material.dart';
import 'package:horario_espiritual/src/models/horario_espiritual_model.dart';
import 'package:horario_espiritual/src/shared/app_colors.dart';

class VinculationItemWidget extends StatelessWidget {
  final List<HorarioEspiritualModel>? horariosEspirituais;

  const VinculationItemWidget({Key? key, required this.horariosEspirituais})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [for (var horario in horariosEspirituais!) _card(horario)],
      ),
    );
  }

  Widget _card(HorarioEspiritualModel horario) {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0, top: 20),
            child: Text(
              horario.getType(horario.type),
              style: TextStyle(color: AppColors.grey),
            ),
          )),
      Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
            Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(horario.title),
                )),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Checkbox(
                  value: horario.isDone,
                  onChanged: (bool? value) {
                    setState() {}
                  },
                ),
              ),
            )
          ],
        ),
      )
    ]);
  }
}
