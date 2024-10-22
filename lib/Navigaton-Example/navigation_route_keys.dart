

enum NavigationRouteKeys {
  home('/'),
  settings('/settings'),
  profile('/profile'),
  products('/products'),
  notifications('/notifications');

  final String name;
  const NavigationRouteKeys(this.name);
}
