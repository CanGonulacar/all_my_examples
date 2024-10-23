import 'package:get_it/get_it.dart';

final class ProductContainer {
  const ProductContainer._();

  static final _getit = GetIt.instance;

  static void setUp() {
    _getit.registerSingleton<DummyNetworkManager>(DummyNetworkManager.base());
  }

  /// This Dart function reads and returns an instance of type T using a dependency injection container.
  static T read<T extends Object>() => _getit<T>();
}

/// An Example of a dummy network manager.
final class DummyNetworkManager {
  DummyNetworkManager.base();
}
