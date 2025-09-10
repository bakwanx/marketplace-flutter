import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/presentation/base_home/presentation/cubit/base_home_cubit.dart';
import 'package:marketplace/utils/themes/theme.dart';
import 'package:marketplace/utils/themes/typography_text_style.dart';

import '../../../di/dependency_injection.dart';
import '../../../utils/const/assets_path.dart';

class BaseHomeScreen extends StatelessWidget {
  const BaseHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<BaseHomeCubit>()..getPage(),
      child: const BaseHomeScreenUI(),
    );
  }
}

class BaseHomeScreenUI extends StatefulWidget {
  const BaseHomeScreenUI({super.key});

  @override
  State<BaseHomeScreenUI> createState() => _BaseHomeScreenUIState();
}

class _BaseHomeScreenUIState extends State<BaseHomeScreenUI> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseHomeCubit, BaseHomeState>(
      builder: (context, state) {
        return Scaffold(
          body: state.pages[state.indexPage],
          bottomNavigationBar: CustomBottomNavigationBar(
            items: [
              CustomBottomNavigationBarItem(label: "Home", icon: icHome),
              CustomBottomNavigationBarItem(label: "Mall", icon: icMall),
              CustomBottomNavigationBarItem(label: "Discover", icon: icDiscover),
              CustomBottomNavigationBarItem(label: "Inbox", icon: icInbox),
              CustomBottomNavigationBarItem(label: "Account", icon: icAccount),
            ],
            onTap: (index) => context.read<BaseHomeCubit>().onChangePage(index),
            currentIndex: state.indexPage,
          ),
        );
      },
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final List<CustomBottomNavigationBarItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.items,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 70,
      // elevation: 20,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey[200]!)),
        color: Colors.white,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: kBottomNavigationBarHeight,
          maxHeight: kBottomNavigationBarHeight,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (int index = 0; index < items.length; index++)
                Expanded(
                  child: InkResponse(
                    onTap: () => onTap(index),
                    highlightShape: BoxShape.circle,
                    child: Container(
                      padding: const EdgeInsets.only(top: 10.0),
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(items[index].icon, width: 26),
                          SizedBox(height: 3),
                          Text(
                            items[index].label,
                            style: TextStyle(
                              fontSize: 11,
                              color:
                              index == currentIndex
                                  ? CustomColor.greenColor
                                  : Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          // SizedBox(height: 4),
                          Spacer(),
                          CurvedBottomBar(
                            color:
                            index == currentIndex
                                ? CustomColor.greenColor
                                : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBottomNavigationBarItem {
  final String icon;
  final String label;

  const CustomBottomNavigationBarItem({
    required this.icon,
    required this.label,
  });
}

class CurvedBottomBar extends StatelessWidget {
  final Color color;

  const CurvedBottomBar({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopRoundedClipper(),
      child: Container(height: 3, color: color),
    );
  }
}

class TopRoundedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final curveDepth = 6.0;

    final path = Path();
    path.moveTo(0, curveDepth);
    path.quadraticBezierTo(0, 0, curveDepth, 0);
    path.lineTo(size.width - curveDepth, 0);
    path.quadraticBezierTo(size.width, 0, size.width, curveDepth);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
