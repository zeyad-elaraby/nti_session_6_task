import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_session_6_task/core/services/service_locator.dart';
import 'package:nti_session_6_task/products/domain/entities/product_entity.dart';
import 'package:nti_session_6_task/products/presentation/controller/products_cubit.dart';
import 'package:nti_session_6_task/products/presentation/controller/products_states.dart';
import 'package:nti_session_6_task/products/presentation/components/produuct_list_item.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductsCubit>()..getAllProducts(),
      child: Scaffold(
        body: BlocBuilder<ProductsCubit, ProductsStates>(
          builder: (context, state) {
            if (state is ProductsLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is ProductsErrorState) {
              return Center(child: Text(state.errorMessage));
            }
            if (state is ProductsSuccessState) {
              List<ProductEntity> products = state.products;

              return ListView.builder(
                itemBuilder: (context, index) {
                  return ProductListItem(product: products[index]);
                },
                itemCount: state.products.length,
              );
            }
            return SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
