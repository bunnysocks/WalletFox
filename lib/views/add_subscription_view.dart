import 'package:flutter/material.dart';
import 'package:walletfox/utils/styles/app_theme.dart';
import 'package:walletfox/widgets/analysis_view.dart';

class AddSubscriptionView extends StatelessWidget {
  AddSubscriptionView({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController costController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  String billingCycle = "Monthly";
  String category = "entertainment";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(titleSpacing: 0, title: Text("Add a new subscription"),),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 12,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter the details of your subscriptions to start tracking", style: Theme.of(context).textTheme.bodyLarge?.copyWith(),),
              ),
            ),

            _borderField(nameController, "Subscription Name"),
            _borderField(costController, "Monthly Cost (\$)", inputType: TextInputType.number),
            _borderField(dateController, "Next billing date", readOnly: true, onTap: () {
              // Pick Date
            }),
            const SizedBox(height: 8,),
            _dropDownField(label: "Billing Cycle", value: billingCycle, items: const ["Daily", "Weekly", "Monthly", "Yearly", "Never"], onChanged: (v) {}),
            _dropDownField(label: "Category", value: category, items: categories, onChanged: (v) {}),

            const SizedBox(height: 40,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  //save subscription
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColors.blue),
                  foregroundColor: WidgetStatePropertyAll(AppColors.white)
                ), 
                child: const Text("Save Subscription"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _borderField(
    TextEditingController c,
    String label, {
      TextInputType? inputType,
      bool readOnly = false,
      VoidCallback? onTap,
    }) {
      return TextField(
        controller: c,
        keyboardType: inputType,
        readOnly: readOnly,
        onTap: onTap,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(borderSide: BorderSide(width: 1))
        ),
      );
    }

    Widget _dropDownField(
      {required String label,
      required String value,
      required List<String> items,
      required Function(String) onChanged,}
    ) {
      return InputDecorator(decoration: const InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
      ).copyWith(labelText: label),
      child: DropdownButtonHideUnderline(child: DropdownButton<String>(value: value, isExpanded: true, items: items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(), onChanged: (v) => onChanged(v!),)),
      );
    }
}