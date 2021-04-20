import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;

  LevelButtonWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: AppColors.levelButtonFacil,
          border: Border.fromBorderSide(BorderSide(
            color: AppColors.levelButtonBorderFacil,
          ))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        child: Text(label,
            style: GoogleFonts.notoSans(
              color: AppColors.levelButtonBorderFacil,
              fontSize: 13,
            )),
      ),
    );
  }
}
