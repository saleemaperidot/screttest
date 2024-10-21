import 'package:flutter/widgets.dart';
import 'package:screltest/componets/componants.dart';

List<FormStepsModel> formStepModel = [
  FormStepsModel(
      'Create new campaign',
      "Fill out these details and get your campaign ready",
      Status.pending,
      CategoryWidget(
        category: 0,
      )),
  FormStepsModel(
      'Create segments',
      "Get full control over your audience",
      Status.pending,
      const CategoryWidget(
        category: 1,
      )),
  FormStepsModel(
      'Binding Strategy',
      "optimize your campain reach with adsense",
      Status.pending,
      const CategoryWidget(
        category: 2,
      )),
  FormStepsModel(
      'Site Links',
      "Set up your customer journey flow",
      Status.pending,
      const CategoryWidget(
        category: 3,
      )),
  FormStepsModel(
      'Review campaign',
      "Double check your campaign is ready to get",
      Status.pending,
      const CategoryWidget(
        category: 4,
      )),
];

enum Status { completed, pending }

class FormStepsModel {
  final String title;
  final String label;
  Status status; // enum : completed or  pending,

  final Widget formWidget;

  FormStepsModel(this.title, this.label, this.status,
      this.formWidget); // (Widget Data Type the real for form fields, left side widget)
}
