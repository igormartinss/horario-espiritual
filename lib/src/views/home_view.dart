import 'package:flutter/material.dart';
import 'package:horario_espiritual/src/components/vinculation_item_widget.dart';
import 'package:horario_espiritual/src/components/vinculation_option_widget.dart';
import 'package:horario_espiritual/src/shared/app_colors.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        children: [VinculationOptionWidget(), VinculationItemWidget()],
      ),
    );
  }
}
