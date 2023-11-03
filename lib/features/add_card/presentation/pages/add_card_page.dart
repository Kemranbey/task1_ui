import 'package:flutter/material.dart';
import 'package:task1_ui/features/add_card/presentation/widgets/wbody.dart';
import '../widgets/text_fields_widgets/wtext_field.dart';
import '/core/widgets/wappbar/wappbar_leading.dart';
import 'package:auto_route/auto_route.dart';
import '../widgets/wcustom_containter.dart';

@RoutePage()
class AddCardPage extends StatelessWidget {
  const AddCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: double.infinity,
          leading: const WAppBarLeading(
            title: 'Add Credit Card',
          ),
        ),
        body: WBody(),
    );
  }
}
