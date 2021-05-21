import 'package:flutter/material.dart';
import 'package:horario_espiritual/src/shared/app_colors.dart';

class VinculationItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                child: Text(
                  "Propósito Pessoal",
                  style: TextStyle(color: AppColors.grey),
                ),
              )),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
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
                      child: Text("opa"),
                    )),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Checkbox(
                      value: true,
                      onChanged: (bool? value) {
                        setState() {}
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
