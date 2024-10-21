import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screltest/componets/constants.dart';
import 'package:screltest/models/form_step_model.dart';

ValueNotifier<int> indexNotifier = ValueNotifier(0);

class UserData extends StatelessWidget {
  const UserData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: ValueListenableBuilder<int>(
          valueListenable: indexNotifier,
          builder: (context, value, child) {
            return SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                padding: const EdgeInsets.all(30),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    bool isSmallScreen = constraints.maxWidth < 600;
                    return isSmallScreen
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              formStepModel[indexNotifier.value].formWidget,
                              const SizedBox(height: 20),
                              Container(
                                color: white,
                                width: MediaQuery.of(context).size.width,
                                // height: double.infinity,
                                child: Column(
                                  children: List.generate(formStepModel.length,
                                      (index) {
                                    return InkWell(
                                      onTap: () {
                                        indexNotifier.value = index;
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: ListTile(
                                          leading: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: grey,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: CircleAvatar(
                                              radius: 30,
                                              backgroundColor:
                                                  indexNotifier.value == index
                                                      ? orange
                                                      : white,
                                              child:
                                                  Text((index + 1).toString()),
                                            ),
                                          ),
                                          title:
                                              Text(formStepModel[index].title),
                                          subtitle:
                                              Text(formStepModel[index].label),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Expanded(
                                child: formStepModel[indexNotifier.value]
                                    .formWidget,
                              ),
                              const SizedBox(width: 20),
                              Container(
                                color: white,
                                height:
                                    MediaQuery.of(context).size.height * 0.75,
                                width: MediaQuery.of(context).size.width / 2.5,
                                child: Column(
                                  children: List.generate(formStepModel.length,
                                      (index) {
                                    return InkWell(
                                      onTap: () {
                                        indexNotifier.value = index;
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: ListTile(
                                          leading: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: grey,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: CircleAvatar(
                                              radius: 30,
                                              backgroundColor: value == index
                                                  ? orange
                                                  : white,
                                              child:
                                                  Text((index + 1).toString()),
                                            ),
                                          ),
                                          title:
                                              Text(formStepModel[index].title),
                                          subtitle:
                                              Text(formStepModel[index].label),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ],
                          );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
