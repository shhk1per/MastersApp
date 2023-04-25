import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/constants.dart';


class SettingTile extends StatelessWidget {
  final String settingTitle;
  final String settingDescription;
  final Widget settingsWidget;
  const SettingTile({
    super.key,
    required this.settingTitle,
    required this.settingDescription,
    required this.settingsWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: ksecondryLightColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                settingTitle,
                style: const TextStyle(
                  color: kprimaryColor,
                  fontSize: kbignormalFontSize,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(height: 10),
              Text(
                settingDescription,
                style: const TextStyle(

                  color: ksecondryLightColor,

                  fontSize: knormalFontSize,

                ),
              ),
            ],
          ),
          const Spacer(),
          settingsWidget,
        ],
      ),
    );
  }
}
