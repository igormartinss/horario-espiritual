import 'package:flutter/material.dart';
import 'package:horario_espiritual/src/models/horario_espiritual_model.dart';
import 'package:horario_espiritual/src/shared/app_colors.dart';

class VinculationItemWidget extends StatefulWidget {
  final List<HorarioEspiritualModel>? horariosEspirituais;

  const VinculationItemWidget({Key? key, required this.horariosEspirituais})
      : super(key: key);

  @override
  _VinculationItemWidgetState createState() => _VinculationItemWidgetState();
}

class _VinculationItemWidgetState extends State<VinculationItemWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.horariosEspirituais!.length,
      itemBuilder: (BuildContext context, int index) {
        HorarioEspiritualModel horarioEspiritual =
            widget.horariosEspirituais![index];
        return Padding(
          padding: const EdgeInsets.only(top: 14.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Container(
                      decoration: BoxDecoration(
                        color: getColor(horarioEspiritual.type),
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
                              HorarioEspiritualModel.getType(
                                  horarioEspiritual.type),
                              style: TextStyle(
                                  color: AppColors.grey, fontSize: 12),
                            ),
                            Text(
                              horarioEspiritual.title,
                              style: TextStyle(
                                  color: getColor(horarioEspiritual.type),
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
                      value: horarioEspiritual.isDone,
                      onChanged: (bool? value) {
                        setState(() {
                          horarioEspiritual.isDone = value!;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
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
