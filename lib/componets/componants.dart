import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:screltest/componets/constants.dart';
import 'package:screltest/models/form_step_model.dart';
import 'package:screltest/view/user_data.dart';
import 'package:screltest/viewmodels/user_provider.dart';

class TextFieldLabel extends StatelessWidget {
  const TextFieldLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CupertinoToggleButton extends StatefulWidget {
  @override
  _CupertinoToggleButtonState createState() => _CupertinoToggleButtonState();
}

class _CupertinoToggleButtonState extends State<CupertinoToggleButton> {
  bool isToggled = false; // Toggle button state

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isToggled,
              onChanged: (bool value) {
                setState(() {
                  isToggled = value; // Update the toggle state
                });
              },
              activeColor: orange, // Color when toggled on
            ),
          ),
        ],
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: orange, width: 2.0), // Orange border color
        foregroundColor: orange, // Text color (orange)
        minimumSize: Size(screenSize.width / 5,
            screenSize.height * 0.07), // 60% of width, 7% of height
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10), // Rounded border radius of 10
        ),
      ),
      child: Text('Save Draft'),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: orange, // Orange background color
        foregroundColor: white, // White text color
        minimumSize: Size(screenSize.width / 3,
            screenSize.height * 0.07), // 60% of width, 7% of height
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // Rounded border radius of 5
        ),
      ),
      child: Text('Next Step'),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});
  final int category;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
      color: white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            formStepModel[category].title,
          ),
          Text(formStepModel[category].label, style: TextStyle(color: grey)),
          mediumHeight,
          CustomForms()
        ],
      ),
    );
  }
}

class CustomForms extends ConsumerWidget {
  CustomForms({
    super.key,
  });
  final TextEditingController _campaignSubjectController =
      TextEditingController();
  final TextEditingController _previewTextController = TextEditingController();
  final TextEditingController _fromNameController = TextEditingController();
  final TextEditingController _fromEmailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(formNotifierProvider.notifier)
          .loadForm(index: indexNotifier.value);
    });

    final formData = ref.watch(formNotifierProvider);
    _campaignSubjectController.text = formData?.campaignSubject ?? "";
    _previewTextController.text = formData?.previewText ?? "";
    _fromNameController.text = formData?.fromName ?? "";
    _fromEmailController.text = formData?.fromemail ?? "";

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Campaign Subject",
              style: labelStyle,
            ),

            TextFormField(
                validator: (value) {
                  if (value == null || value == "") {
                    return "Enter a valid input";
                  }
                  return null;
                },
                controller: _campaignSubjectController,
                decoration: textfieldStyle.copyWith(hintText: "Enter Subject")),
            smallHeight,
            Text(
              "Preview Text",
              style: labelStyle,
            ),

            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some preview text';
                }
                return null;
              },
              controller: _previewTextController,
              maxLines: 4,
              decoration: textfieldStyle.copyWith(
                hintText: "Enter Text Here",
              ),
            ),

            Text(
              "Keep This simple of 50 charecters",
              style: labelStyle.copyWith(color: grey),
            ),
            smallHeight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 4.2,
                  child: Column(
                    children: [
                      const Text(
                        " 'From' name",
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a name';
                          }
                          return null;
                        },
                        controller: _fromNameController,
                        decoration:
                            textfieldStyle.copyWith(hintText: "From Anne"),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 4.2,
                    child: Column(
                      children: [
                        const Text(
                          " 'From' Email",
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter an email';
                            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                .hasMatch(value)) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                          controller: _fromEmailController,
                          decoration: textfieldStyle.copyWith(
                              hintText: "Anne@gmail.com"),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            smallHeight,
            divider,
            smallHeight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Runs only once per customer"),
                CupertinoToggleButton()
              ],
            ),
            //mediumHeight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Custom Audiance",
                  style: labelStyle.copyWith(color: grey),
                ),
                CupertinoToggleButton()
              ],
            ),
            mediumHeight,
            SizedBox(
              child: RichText(
                text: TextSpan(
                  text: 'You can set up a ',
                  style: TextStyle(
                      color: black, fontSize: 13), // Default text style
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'custom domain or connect your email service provider',
                      style: TextStyle(
                          color: orange,
                          fontSize: 13), // Orange color for "custom domain"
                    ),
                    TextSpan(
                      text: ' to change this.',
                      style: TextStyle(
                          color: black, fontSize: 13), // Default color
                    ),
                  ],
                ),
              ),
            ),
            smallHeight,
            divider,
            smallHeight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomOutlineButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ref.read(formNotifierProvider.notifier).saveForm(
                          campaignSubject: _campaignSubjectController.text,
                          previewText: _previewTextController.text,
                          fromName: _fromNameController.text,
                          fromemail: _fromEmailController.text,
                          index: indexNotifier.value);
                      final formDataJson = ref
                          .read(formNotifierProvider.notifier)
                          .getFormAsJson();

                      // Print the form data in JSON format
                      print("clicked");
                      print('Form Data: $formDataJson');
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Form Data in JSON'),
                              content: SingleChildScrollView(
                                child: Text(formDataJson),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          });
                    }
                  },
                ),
                CustomElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      indexNotifier.value = indexNotifier.value + 1;
                      formStepModel[indexNotifier.value].status =
                          Status.completed;
                    }
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
