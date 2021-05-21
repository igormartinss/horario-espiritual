import 'package:flutter/material.dart';
import 'package:horario_espiritual/src/shared/app_colors.dart';

class VinculationOptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Card(
        shape: StadiumBorder(side: BorderSide(color: AppColors.blue)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Propósito Pessoal",
            style: TextStyle(color: AppColors.blue),
          ),
        ),
      ),
    );
  }
}
