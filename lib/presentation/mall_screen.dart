import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../di/dependency_injection.dart';
import '../utils/const/size.dart';
import '../utils/widgets/product_item.dart';
import '../utils/widgets/product_item_skeleton.dart';
import '../utils/widgets/search_field.dart';
import 'cubit/market_place_cubit.dart';

class MallScreen extends StatelessWidget {
  const MallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<MarketPlaceCubit>()..initData(),
      child: MallScreenUI(),
    );
  }
}

class MallScreenUI extends StatefulWidget {
  const MallScreenUI({super.key});

  @override
  State<MallScreenUI> createState() => _MallScreenUIState();
}

class _MallScreenUIState extends State<MallScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppBar(),
      body: SingleChildScrollView(
        child: BlocBuilder<MarketPlaceCubit, MarketPlaceState>(
          builder: (context, state) {
            return Container(
              margin: EdgeInsets.only(top: 16),
              child: Column(
                children: [
                  AlignedGridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount:
                        state.productEntities.isEmpty
                            ? 6
                            : state.productEntities.length,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8 - 4,
                    padding: EdgeInsets.only(
                      left: horizontalPadding(context),
                      right: horizontalPadding(context),
                      bottom: 12,
                    ),
                    itemBuilder: (context, index) {
                      if (state.productEntities.isEmpty) {
                        return ProductItemSkeleton();
                      }
                      return ProductItem(
                        productEntity: state.productEntities[index],
                      );
                    },
                    crossAxisCount: 2,
                  ),
                  Visibility(
                    visible: state.loading,
                    child: Container(
                      padding: EdgeInsets.only(top: 12, bottom: 24),
                      child: CircularProgressIndicator(strokeWidth: 3),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
