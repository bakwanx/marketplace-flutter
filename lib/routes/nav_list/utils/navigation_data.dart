import 'package:path/path.dart' as p;

class NavigationData {
  final String path;
  final NavigationData? parent;
  final List<String> namedParams;

  String get fullpath => p.posix.join(parent?.fullpath ?? '', path);
  String formattedPath(Map<String, String> params,
      [Map<String, String>? queryParams]) {
    String result = fullpath;
    for (final name in namedParams) {
      result = result.replaceAll(':$name', params[name] ?? '');
    }
    return Uri(path: result, queryParameters: queryParams).toString();
  }

  const NavigationData(
      {required this.path, this.parent, this.namedParams = const []});

  @override
  bool operator ==(Object other) =>
      other is NavigationData && other.fullpath == fullpath;

  @override
  int get hashCode => fullpath.hashCode;
}
