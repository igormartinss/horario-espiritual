import 'package:flutter/material.dart';
import 'package:horario_espiritual/src/shared/app_colors.dart';
import 'package:horario_espiritual/src/models/horario_espiritual_model.dart';

class VinculationOptionWidget extends StatefulWidget {
  final Type type;
  const VinculationOptionWidget({Key? key, required this.type})
      : super(key: key);

  @override
  _VinculationOptionWidgetState createState() =>
      _VinculationOptionWidgetState();
}

class _VinculationOptionWidgetState extends State<VinculationOptionWidget> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _options(widget.type),
    );
  }

  Widget _options(Type type) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: GestureDetector(
        onTap: _handleTap,
        child: Card(
          color: _active ? AppColors.blue : AppColors.white,
          shape: StadiumBorder(side: BorderSide(color: AppColors.blue)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              HorarioEspiritualModel.getType(type),
              style:
                  TextStyle(color: _active ? AppColors.white : AppColors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
