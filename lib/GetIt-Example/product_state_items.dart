import 'package:all_my_examples/GetIt-Example/product_container.dart';

final class ProductStateItems {
  const ProductStateItems._();

  /// Reads and returns an instance of type T using a dependency injection container.
  static DummyNetworkManager get productNetworkManager =>
      ProductContainer.read<DummyNetworkManager>();
}
