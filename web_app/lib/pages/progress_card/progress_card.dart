import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/helpers/reponsiveness.dart';
import 'package:flutter_web_dashboard/pages/progress_card/widgets/drivers_table.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class ProgressCardPage extends StatelessWidget {
  const ProgressCardPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
         return Container(
                child: Column(
                children: [
                 Obx(() => Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:
                        ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                        child: CustomText(text: menuController.activeItem.value, size: 24, weight: FontWeight.bold,)),
                    ],
                  ),),

                  Expanded(child: ListView(
                    children: [
                      DriversTable()
                    ],
                  )),

                  ],
                ),
              );
  }
}