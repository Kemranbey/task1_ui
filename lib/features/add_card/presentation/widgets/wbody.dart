import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../gen/=/assets.gen.dart';
import 'text_fields_widgets/wtext_field.dart';
import 'wcustom_containter.dart';

class WBody extends StatelessWidget {
  late TextEditingController controllerCardNumber = TextEditingController();
  late TextEditingController controllerExpDate = TextEditingController();
  late TextEditingController controllerCVV = TextEditingController();
  late TextEditingController controllerAddressLine1 = TextEditingController();
  late TextEditingController controllerAddressLine2 = TextEditingController();
  late TextEditingController controllerState = TextEditingController();
  late TextEditingController controllerCity = TextEditingController();
  late TextEditingController controllerZIPCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ListView(
        children: [
          ///CARD INFORMATION
          WBaseContainer(
            headerTitle: 'CARD INFORMATION',
            child: Column(
              children: [
                WTextField(
                  height: 46,
                  width: double.infinity,
                  controller: controllerCardNumber,
                  hint: 'XXXX XXXX XXXX XXXX',
                  title: 'Card number',
                  prefixIcon: SvgPicture.asset(
                    Assets.icons.cardIcon.path,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WTextField(
                      height: 46,
                      width: 150,
                      controller: controllerCardNumber,
                      hint: 'MM/YY',
                      title: 'Exp. Date',
                    ),
                    WTextField(
                      height: 46,
                      width: 150,
                      controller: controllerCardNumber,
                      hint: 'CVV',
                      title: 'CVV',
                    ),
                  ],
                ),
              ],
            ),
          ),
          ///BILLING INFORMATION
          WBaseContainer(
            headerTitle: 'BILLING INFORMATION',
            child: Column(
              children: [
                WTextField(
                  height: 46,
                  width: double.infinity,
                  controller: controllerAddressLine1,
                  hint: 'Address line',
                  title: 'Address line 1',
                ),
                WTextField(
                  height: 46,
                  width: double.infinity,
                  controller: controllerAddressLine2,
                  hint: 'Address line',
                  title: 'Address line 2',
                ),
                WTextField(
                  height: 46,
                  width: double.infinity,
                  controller: controllerState,
                  hint: 'Select State',
                  title: 'State',
                ),
                WTextField(
                  height: 46,
                  width: double.infinity,
                  controller: controllerCity,
                  hint: 'Select City',
                  title: 'City',
                ),
                WTextField(
                  height: 46,
                  width: double.infinity,
                  controller: controllerZIPCode,
                  hint: 'ZIP Code',
                  title: 'ZIP Code',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
