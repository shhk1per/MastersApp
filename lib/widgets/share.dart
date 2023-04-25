import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../shared/constants.dart';

class Share extends StatelessWidget {
  const Share({Key? key}) : super(key: key);

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
                'share'.tr,
                style: const TextStyle(
                  color: kprimaryColor,
                  fontSize: kbignormalFontSize,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(height: 10),
              Text(
                'shareDescription'.tr,
                style: const TextStyle(
                  color: ksecondryLightColor,
                  fontSize: knormalFontSize,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: ()=>{
                print('shared')
              },
              icon: const Icon(Icons.share)
          )

        ],
      ),
    );
  }
}
