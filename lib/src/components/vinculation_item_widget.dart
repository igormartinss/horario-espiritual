import 'package:flutter/material.dart';
import 'package:horario_espiritual/src/models/horario_espiritual_model.dart';
import 'package:horario_espiritual/src/shared/app_colors.dart';

class VinculationItemWidget extends StatelessWidget {
  final List<HorarioEspiritualModel>? horariosEspirituais;

  const VinculationItemWidget({Key? key, required this.horariosEspirituais})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [for (var horario in horariosEspirituais!) _card(horario)],
    );
  }

  Widget _card(HorarioEspiritualModel horario) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 14.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  child: Container(
                    decoration: BoxDecoration(
                      color: getColor(horario.type),
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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            HorarioEspiritualModel.getType(horario.type),
                            style:
                                TextStyle(color: AppColors.grey, fontSize: 12),
                          ),
                          Text(
                            horario.title,
                            style: TextStyle(
                                color: getColor(horario.type),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ]),
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
        ),
      )
    ]);
  }

  getColor(Type type) {
    if (type == Type.consigo) {
      return AppColors.orange;
    } else if (type == Type.deus) {
      return AppColors.purple;
    } else if (type == Type.mundo) {
      return AppColors.green;
    } else if (type == Type.proposito) {
      return AppColors.red;
    } else if (type == Type.proximo) {
      return AppColors.blue;
    }
  }
}
