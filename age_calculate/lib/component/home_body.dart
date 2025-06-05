import 'package:age_calculate/component/custom_text_form_field.dart';
import 'package:age_calculate/screens/result_page.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  TextEditingController nameController = TextEditingController();
  final myAgeController = TextEditingController();
  final myDateController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                labelText: 'Name',
                hintText: 'Enter your name',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                controller: myAgeController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                labelText: '2002',
                hintText: 'Enter your age',
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                controller: myDateController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your date';
                  }
                  return null;
                },
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.datetime,
                labelText: '2025',
                hintText: 'Enter your date',
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    int age = int.parse(myAgeController.text);
                    int date = int.parse(myDateController.text);
                    int result = date - age;
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => ResultPage(
                              name: nameController.text,
                              age: result,
                            ),
                      ),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
