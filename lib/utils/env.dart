import 'package:demo_task/utils/strings.dart';
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: Strings.baseUrl, obfuscate: true)
  static String baseUrl = _Env.baseUrl;
  @EnviedField(varName: Strings.usersContinuationUrl, obfuscate: true)
  static String usersContinuationUrl = _Env.usersContinuationUrl;
  @EnviedField(varName: Strings.nameParam, obfuscate: true)
  static String nameParam = _Env.nameParam;
  @EnviedField(varName: Strings.ageLtParam, obfuscate: true)
  static String ageLtParam = _Env.ageLtParam;
  @EnviedField(varName: Strings.ageGtParam, obfuscate: true)
  static String ageGtParam = _Env.ageGtParam;
  @EnviedField(varName: Strings.pageParam, obfuscate: true)
  static String pageParam = _Env.pageParam;
}
