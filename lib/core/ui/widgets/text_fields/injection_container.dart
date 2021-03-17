import 'package:centic_bids/core/ui/widgets/text_fields/default_text_field.dart';
import 'package:get_it/get_it.dart';

Future<void> init(GetIt di) async {
  di.registerLazySingleton(() => DefaultTextFieldStyle());
}