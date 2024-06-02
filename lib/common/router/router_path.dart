enum RouterPath {
  main("/"),
  auth("/auth");

  final String path;

  const RouterPath(this.path);
}