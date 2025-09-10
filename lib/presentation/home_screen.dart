import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:marketplace/presentation/cubit/market_place_cubit.dart';
import 'package:marketplace/utils/const/assets_path.dart';
import 'package:marketplace/utils/ext/buildcontext_ext.dart';
import 'package:marketplace/utils/themes/theme.dart';
import 'package:marketplace/utils/themes/typography_text_style.dart';
import 'package:marketplace/utils/widgets/custom_horizontal_section.dart';
import 'package:marketplace/utils/widgets/icon_text.dart';
import 'package:marketplace/utils/widgets/product_item.dart';
import 'package:marketplace/utils/widgets/product_item_skeleton.dart';
import 'package:url_launcher/url_launcher.dart';

import '../di/dependency_injection.dart';
import '../utils/const/size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<MarketPlaceCubit>()..initData(),
      child: const HomeScreenUI(),
    );
  }
}

class HomeScreenUI extends StatefulWidget {
  const HomeScreenUI({super.key});

  @override
  State<HomeScreenUI> createState() => _HomeScreenUIState();
}

class _HomeScreenUIState extends State<HomeScreenUI> {
  late ScrollController _productScrollController;
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    _productScrollController = ScrollController()..addListener(_scrollListener);

    super.initState();
  }

  _scrollListener() {
    final cubit = context.read<MarketPlaceCubit>();

    if (_productScrollController.offset ==
            _productScrollController.position.maxScrollExtent &&
        !cubit.state.loading &&
        cubit.state.hasNextPage) {
      cubit.getProducts();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    heading() {
      Widget dateAndTimeSection() {
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                IconText(
                  iconData: Icons.calendar_today_rounded,
                  text: "14 Oct 2020",
                ),
                IconText(iconData: Icons.access_time, text: "12:30 PM"),
                IconText(
                  iconData: Icons.location_on_sharp,
                  text: "123 Plant Street, 1/1",
                ),
              ],
            ),
          ),
        );
      }

      Widget pointSection() {
        Widget buildItem(String title, String value) {
          return Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TypographyTextStyle.bodyRegular1.copyWith(
                    color: CustomColor.greenColor,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: TypographyTextStyle.headingBold1.copyWith(
                    color: CustomColor.greenColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          );
        }

        Widget buildDivider() {
          return Container(width: 1, height: 40, color: Colors.grey.shade300);
        }

        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40), // rounded ends
          ),
          margin: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildItem("CREDIT", "RM100.00"),
              buildDivider(),
              buildItem("POINTS", "10"),
              buildDivider(),
              buildItem("PACKAGE", "1"),
            ],
          ),
        );
      }

      return Container(
        color: CustomColor.greenColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Logo",
                style: TypographyTextStyle.headingBold1.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Expanded(child: Divider(color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Next Appointment",
                      style: TypographyTextStyle.bodyLight1.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.white)),
                ],
              ),
            ),
            dateAndTimeSection(),
            pointSection(),
          ],
        ),
      );
    }

    Widget bannerSection() {
      return Image.asset(homeBanner);
    }

    Widget menuSection() {
      final width = MediaQuery.of(context).size.width * 0.3;
      return Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(icBtnShop, width: width),
                Image.asset(icBtnService, width: width),
                Image.asset(icBtnPost, width: width),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16),
                    child: Image.asset(icBtn1, width: 70),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Image.asset(icBtn2, width: 70),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Image.asset(icBtn3, width: 70),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Image.asset(icBtn4, width: 70),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Image.asset(icBtn5, width: 70),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget servicesSection() {
      Widget shopPlants() {
        final categories = [
          icBtn1White, // replace with image
          icBtn2White,
          icBtn3White,
          icBtn4White,
          icBtn5White,
        ];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset(icShopPlants)],
                  ),
                ),

                // Scrollable categories
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: categories.length,
                      separatorBuilder: (_, __) => const SizedBox(width: 16),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            categories[index],
                            width: 32,
                            // color: Colors.black87,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            LayoutBuilder(
              builder: (context, constraints) {
                final trackWidth = constraints.maxWidth - 32;
                const thumbWidth = 50.0;
                return Container(
                  height: 6,
                  width: trackWidth,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      double scrollPosition = 0;
                      if (_controller.hasClients &&
                          _controller.position.maxScrollExtent > 0) {
                        scrollPosition =
                            _controller.offset /
                            _controller.position.maxScrollExtent;
                      }

                      double thumbX =
                          scrollPosition * (trackWidth - thumbWidth);

                      return Stack(
                        children: [
                          Positioned(
                            left: thumbX,
                            child: GestureDetector(
                              onHorizontalDragUpdate: (details) {
                                if (_controller.hasClients) {
                                  final newPos = (details.localPosition.dx /
                                          (trackWidth - thumbWidth))
                                      .clamp(0.0, 1.0);

                                  _controller.jumpTo(
                                    newPos *
                                        _controller.position.maxScrollExtent,
                                  );
                                }
                              },
                              child: Container(
                                width: thumbWidth,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              },
            ),
          ],
        );
      }

      return BlocBuilder<MarketPlaceCubit, MarketPlaceState>(
        builder: (context, state) {
          return Container(
            color: Colors.grey.shade100,
            margin: EdgeInsets.only(bottom: 18),
            child: Column(
              children: [
                CustomHorizontalSection(
                  title: "New Services",
                  subtitle: "Recommended based on your preferences",
                  onTapViewAll: () {

                  },
                  items:
                      state.productServices.isNotEmpty
                          ? state.productServices.map((value) {
                            return ProductItem(productEntity: value);
                          }).toList()
                          : List.generate(
                            5,
                            (_) => ProductItemSkeleton(),
                          ).toList(),
                ),
                shopPlants(),
              ],
            ),
          );
        },
      );
    }

    Widget trendingDiscoveries() {
      final spacing = 8.0;
      return BlocBuilder<MarketPlaceCubit, MarketPlaceState>(
        builder: (context, state) {
          if (state.productEntities.isEmpty) {
            return Column(children: [Text('Product empty')]);
          }

          return SingleChildScrollView(
            controller: _productScrollController,
            child: Column(
              children: [
                Image.asset(trendingDiscoveriesImg, fit: BoxFit.fill),
                Container(
                  color: Color(0xff112F23),
                  child: Column(
                    children: [
                      AlignedGridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount:
                            state.productEntities.isEmpty
                                ? 6
                                : state.productEntities.length,
                        crossAxisSpacing: spacing,
                        mainAxisSpacing: spacing - 4,
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
                ),
              ],
            ),
          );
        },
      );
    }

    Widget footer() {
      Widget placeInformation(
        String title,
        String place,
        String time,
        Function() onTap,
      ) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TypographyTextStyle.headingBold4.copyWith(
                fontSize: 16,
              ),
            ),
            Row(
              children: [
                Icon(Icons.location_on_sharp, color: CustomColor.greenColor),
                SizedBox(width: 8),
                Expanded(
                  child: InkWell(
                    onTap: onTap,
                    child: Text(place, style: TextStyle(
                      color: Colors.blueAccent,
                    ),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.access_time, color: CustomColor.greenColor),
                SizedBox(width: 8),
                Expanded(child: Text(time)),
              ],
            ),
          ],
        );
      }

      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Location", style: TypographyTextStyle.headingBold4),
            SizedBox(height: 8),
            SizedBox(
              height: 200,
              child: GoogleMap(
                zoomControlsEnabled: false,
                zoomGesturesEnabled: false,
                // myLocationEnabled: false,
                myLocationButtonEnabled: false,
                onTap:
                    (latlng) => _launchMap(
                      LatLng(3.105381112357855, 101.7009307379261),
                    ),
                mapType: MapType.normal,
                markers: {
                  Marker(
                    markerId: MarkerId('marker1'),
                    position: LatLng(3.105381112357855, 101.7009307379261),
                  ),
                },
                initialCameraPosition: CameraPosition(
                  target: LatLng(3.105381112357855, 101.7009307379261),
                  zoom: 16,
                ),
              ),
            ),
            SizedBox(height: 16),
            placeInformation(
              "Sunway Pyramid",
              "10 Floor, Lorem Ipsum Mall, Jalan ss23 Lorem, Selangor, Malaysia",
              "10am - 10pm",
              () {
                _launchMap(
                  LatLng(3.105381112357855, 101.7009307379261),
                );
              },
            ),
            SizedBox(height: 16),
            placeInformation(
              "The Gardens Mall",
              "10 Floor, Lorem Ipsum Mall, Jalan ss23 Lorem, Selangor, Malaysia",
              "10am - 10pm",
              () {
                _launchMap(
                  LatLng(3.105381112357855, 101.7009307379261),
                );
              },
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            heading(),
            bannerSection(),
            menuSection(),
            servicesSection(),
            trendingDiscoveries(),
            footer(),
          ],
        ),
      ),
    );
  }

  Future<void> _launchMap(LatLng latlng) async {
    final url = Uri.parse(
      'https://maps.google.com/?q=${latlng.latitude},${latlng.longitude}',
    );

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
