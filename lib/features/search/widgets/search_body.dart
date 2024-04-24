import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/core/styles/styles.dart';
import 'package:weather_app/core/utils/weather_image.dart';
import 'package:weather_app/core/weather_bloc/weather_bloc.dart';
import 'package:weather_app/features/search/widgets/locations_and_results/locations_and_results.dart';
import 'package:weather_app/features/search/widgets/search_widget.dart';
import 'package:weather_app/features/weather/widgets/background_blur_widget.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  final controller = ScrollController();

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.read<WeatherBloc>().state;
    final int code = state.locations[0].currentWeather.weatherConditionCode;
    final dayTimes = state.locations[0].currentWeather.dayTimes;
    final currentWidth = MediaQuery.of(context).size.width;

    return Builder(
      builder: (context) {
        return Stack(
          children: [
            BackgroundBlurWidget(
              code: code,
              dayTimes: dayTimes,
            ),
            DelayedDisplay(
              fadingDuration: const Duration(milliseconds: 795),
              slidingBeginOffset: const Offset(0, -1),
              fadeIn: true,
              child: CustomScrollView(
                controller: controller,
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              BackButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                color: Colors.white,
                              ),
                              const Text(
                                'Погода',
                                style: TextStyles.large2,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const SearchWidget(),
                        ],
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: LocationsAndResults()),
                  )
                  // currentWidth < 700
                  //     ? const SliverToBoxAdapter(
                  //         child: Align(
                  //             alignment: AlignmentDirectional.topStart,
                  //             child: LocationsAndResults()),
                  //       )
                  //     : TwoSideSliver(
                  //         leftSize: 450,
                  //         left: const SliverToBoxAdapter(
                  //           child: Align(
                  //             alignment: AlignmentDirectional.topStart,
                  //             child: LocationsAndResults(),
                  //           ),
                  //         ),
                  //         right: SliverPersistentHeader(
                  //           floating: true,
                  //           pinned: true,
                  //           delegate: PinnedImage(),
                  //         ))
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class TwoSideSliver extends MultiChildRenderObjectWidget {
  final double leftSize;
  final Widget left;
  final Widget right;

  TwoSideSliver({
    super.key,
    required this.leftSize,
    required this.left,
    required this.right,
  }) : super(children: [left, right]);

  @override
  RenderTwoSideSliver createRenderObject(BuildContext context) {
    return RenderTwoSideSliver(leftSize: leftSize);
  }

  @override
  void updateRenderObject(context, RenderTwoSideSliver renderObject) {
    renderObject.leftSize = leftSize;
  }
}

extension _TwoSideParentDataExt on RenderSliver {
  /// Shortcut for [parentData]
  _TwoSideParentData get twoSide => parentData! as _TwoSideParentData;
}

class _TwoSideParentData extends SliverPhysicalParentData
    with ContainerParentDataMixin<RenderSliver> {}

class RenderTwoSideSliver extends RenderSliver
    with ContainerRenderObjectMixin<RenderSliver, _TwoSideParentData> {
  RenderTwoSideSliver({required double leftSize}) : _leftSize = leftSize;

  double get leftSize => _leftSize;
  double _leftSize;

  set leftSize(double value) {
    if (_leftSize == value) return;
    _leftSize = value;
    markNeedsLayout();
  }

  @override
  void setupParentData(RenderSliver child) {
    if (child.parentData is! _TwoSideParentData) {
      child.parentData = _TwoSideParentData();
    }
  }

  RenderSliver get left => _children.elementAt(0);

  RenderSliver get right => _children.elementAt(1);

  Iterable<RenderSliver> get _children sync* {
    RenderSliver? child = firstChild;
    while (child != null) {
      yield child;
      child = childAfter(child);
    }
  }

  @override
  void performLayout() {
    if (firstChild == null) {
      geometry = SliverGeometry.zero;
      return;
    }

    left.layout(
      parentUsesSize: true,
      constraints.copyWith(crossAxisExtent: leftSize),
    );

    right.layout(
      parentUsesSize: true,
      constraints.copyWith(
        crossAxisExtent: constraints.crossAxisExtent - leftSize,
      ),
    );

    right.twoSide.paintOffset = Offset(leftSize, 0);

    if (left.geometry!.scrollExtent > right.geometry!.scrollExtent) {
      geometry = left.geometry;
    } else {
      geometry = right.geometry;
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (!geometry!.visible) return;
    context.paintChild(left, offset);
    context.paintChild(right, Offset(offset.dx + leftSize, offset.dy));
  }

  @override
  bool hitTestChildren(
    SliverHitTestResult result, {
    required double mainAxisPosition,
    required double crossAxisPosition,
  }) {
    for (final child in _childrenInHitTestOrder) {
      if (child.geometry!.visible) {
        final hit = child.hitTest(
          result,
          mainAxisPosition: mainAxisPosition,
          crossAxisPosition: crossAxisPosition - child.twoSide.paintOffset.dx,
        );

        if (hit) return true;
      }
    }
    return false;
  }

  Iterable<RenderSliver> get _childrenInHitTestOrder sync* {
    RenderSliver? child = lastChild;
    while (child != null) {
      yield child;
      child = childBefore(child);
    }
  }

  /// Important!
  /// Otherwise Widgets like [Slider] or [PopupMenuButton] won't work even
  /// though the rest of Widget will work (like [ElevatedButton])
  @override
  void applyPaintTransform(RenderSliver child, Matrix4 transform) {
    child.twoSide.applyPaintTransform(transform);
  }
}

class PinnedImage extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final loc = context.read<WeatherBloc>().state.locations[0].currentWeather;
    final code = loc.weatherConditionCode;
    final dayTimes = loc.dayTimes;
    final image = dayTimes == DayTimes.day
        ? Image.asset(dayImage(code))
        : Image.asset(nightImage(code));
    return Padding(
      padding: const EdgeInsets.all(50),
      child: image,
    );
  }

  @override
  double get maxExtent => 500;

  @override
  double get minExtent => 500;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
