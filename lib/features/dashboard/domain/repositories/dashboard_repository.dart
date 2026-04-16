import 'package:bloc_2026/core/exceptions/http_exception.dart';
import 'package:bloc_2026/core/network/model/either.dart';
import 'package:bloc_2026/features/dashboard/data/models/product_request.dart';
import 'package:bloc_2026/features/dashboard/data/models/products_response.dart';

abstract class DashboardRepository {
  Future<Either<AppException, ProductsResponse>> getProducts({
    required ProductRequest request,
  });
}
