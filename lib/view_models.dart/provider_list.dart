import 'package:flutter_template/view_models.dart/example_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> get providerList {
  return [
    Provider<ExampleViewModel>(create: (_) => ExampleViewModel()),
  ];
}
