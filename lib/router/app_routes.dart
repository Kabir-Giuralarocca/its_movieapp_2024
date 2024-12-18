enum AppRoute {
  notFound('/not-found'),
  welcome('/welcome'),
  signIn('/sign-in'),
  signUp('/sign-up'),
  home('/home');

  final String path;

  const AppRoute(this.path);
}
