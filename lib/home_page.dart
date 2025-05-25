import 'package:flutter/material.dart';
import 'package:flutter_animation/advance_icon.dart';
import 'package:flutter_animation/animate_do.dart';
import 'package:flutter_animation/animate_size_fade.dart';
import 'package:flutter_animation/animated_container_page.dart';
import 'package:flutter_animation/animated_container_screen.dart';
import 'package:flutter_animation/animated_cross_fade_page.dart';
import 'package:flutter_animation/animated_default_text_style.dart';
import 'package:flutter_animation/animated_icon_page.dart';
import 'package:flutter_animation/auto_complete_page.dart';
import 'package:flutter_animation/back_drop_filter/back_drop_filter1.dart';
import 'package:flutter_animation/badges_page.dart';
import 'package:flutter_animation/banner-example.dart';
import 'package:flutter_animation/chart/chart_page.dart';
import 'package:flutter_animation/checkbox_listtile.dart';
import 'package:flutter_animation/chips/chips_page.dart';
import 'package:flutter_animation/circle_list_menu_page.dart';
import 'package:flutter_animation/circle_menu_page.dart';
import 'package:flutter_animation/circular_progress_bar_screen.dart';
import 'package:flutter_animation/circular_seekbar_screen.dart';
import 'package:flutter_animation/clipper_painter/clipper_painters_examples.dart';
import 'package:flutter_animation/container_transformation_page.dart';
import 'package:flutter_animation/credit_card_page.dart';
import 'package:flutter_animation/cupertino_context_menu.dart';
import 'package:flutter_animation/dash_rotate_border_profile/dash_rotate_border_profile.dart';
import 'package:flutter_animation/day_night_time_picker.dart';
import 'package:flutter_animation/delay_display_page.dart';
import 'package:flutter_animation/dismissible_item_listView_scroll_left.dart';
import 'package:flutter_animation/dotted_border/dotted_border_page.dart';
import 'package:flutter_animation/draggable_scrollable_sheet.dart';
import 'package:flutter_animation/dropdown_button_page/dropdown_button_page.dart';
import 'package:flutter_animation/elegant_notification_screen.dart';
import 'package:flutter_animation/expandable_list_page.dart';
import 'package:flutter_animation/expandable_text.dart';
import 'package:flutter_animation/expansion_tile_card_page.dart';
import 'package:flutter_animation/fade_in_out.dart';
import 'package:flutter_animation/fade_out_particle_screen.dart';
import 'package:flutter_animation/flip_card_page.dart';
import 'package:flutter_animation/flutter_slidable_screen.dart';
import 'package:flutter_animation/glassmorphism_page.dart';
import 'package:flutter_animation/globe/globe_screen.dart';
import 'package:flutter_animation/grid_tile_page.dart';
import 'package:flutter_animation/hero/hero_screen.dart';
import 'package:flutter_animation/hero/hero_transition_animation_page.dart';
import 'package:flutter_animation/indexed_stack_page.dart';
import 'package:flutter_animation/interactive_viewer_pahe.dart';
import 'package:flutter_animation/keyboard_virtual/virtual_keyboard_clean_screen.dart';
import 'package:flutter_animation/layout_builder_portrait_landscape.dart';
import 'package:flutter_animation/like_button_page.dart';
import 'package:flutter_animation/liquid_pull_to_refresh.dart';
import 'package:flutter_animation/loading_animation.dart';
import 'package:flutter_animation/local_hero_transform_folder/local_hero_transform_screen.dart';
import 'package:flutter_animation/lottie/lottie_screen.dart';
import 'package:flutter_animation/more_screen.dart';
import 'package:flutter_animation/motion_tab_bar_example/motion_tab_bar_screen.dart';
import 'package:flutter_animation/motion_widgets/motion_widget_screen.dart';
import 'package:flutter_animation/moving_border_color.dart';
import 'package:flutter_animation/neomorphism/nepmorphism_page.dart';
import 'package:flutter_animation/pager_view/carousel_slider_screen.dart';
import 'package:flutter_animation/photo_view_example.dart';
import 'package:flutter_animation/pin_code_fields_example.dart';
import 'package:flutter_animation/popup_menu_item.dart';
import 'package:flutter_animation/positioned_screen.dart';
import 'package:flutter_animation/radial_guage_screen.dart';
import 'package:flutter_animation/radio_list_tile_page.dart';
import 'package:flutter_animation/refresh_indicatior_page.dart';
import 'package:flutter_animation/reorderable_listview_page.dart';
import 'package:flutter_animation/shake_textfield_screen.dart';
import 'package:flutter_animation/shimmer_image_cache.dart';
import 'package:flutter_animation/slide_switcher_pahe.dart';
import 'package:flutter_animation/slider_page.dart';
import 'package:flutter_animation/sliver_tabbar.dart';
import 'package:flutter_animation/pager_view/smooth_page_indicator_screen.dart';
import 'package:flutter_animation/solar_date_picker_screen.dart';
import 'package:flutter_animation/stagger_animation_screen/stagger_animation_screen.dart';
import 'package:flutter_animation/star_menu.dart';
import 'package:flutter_animation/stepper_page.dart';
import 'package:flutter_animation/sticky_headers_example.dart';
import 'package:flutter_animation/tabbar_customized_screen.dart';
import 'package:flutter_animation/table_page.dart';
import 'package:flutter_animation/text_kit_page.dart';
import 'package:flutter_animation/toast.dart';
import 'package:flutter_animation/toast_swap_dismissable.dart';
import 'package:flutter_animation/transition/transition_page.dart';
import 'package:flutter_animation/tween_animation_page.dart';
import 'package:flutter_animation/wrap_chip_page.dart';

import 'animate_toggle_switch_page.dart';
import 'circle_list_page.dart';
import 'cuportino_sliding_segmented_control_page.dart';
import 'custom_scroll_view_examples/custom_sroll_view_examples.dart';
import 'date_picker_example/data_picker_example.dart';
import 'expansion_tile_page.dart';
import 'keyboard_virtual/virtual_keyboard.dart';
import 'list_wheel_scroll_view_ page.dart';
import 'longpress_draggable_page.dart';
import 'matrix_transition_example.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const AnimatedToggleSwitchPage()),
                        );
                      },
                      child: Text("AnimatedToggleSwitchPage")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const AnimatedContainerPage()),
                        );
                      },
                      child: Text("Animated container page")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AnimatedContainerScreen()),
                        );
                      },
                      child: Text("Animated Container Screen")),


                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnimateDo()),
                        );
                      },
                      child: Text("Animate do")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const AnimateSizeFadePage()),
                        );
                      },
                      child: Text("Animate size and fade")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AdvanceIconPage()),
                        );
                      },
                      child: Text("Advance Icon")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const AnimatedCrossFadePage()),
                        );
                      },
                      child: Text("animatyed CrossFade")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AnimatedDefaultTextStylePage()),
                        );
                      },
                      child: Text("Animated Default TextStyle Page")),


                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AutoCompletePage()),
                        );
                      },
                      child: Text("Auto complete Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AnimatedIconPage()),
                        );
                      },
                      child: Text("Animated Icon Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BackDropFilter1()),
                        );
                      },
                      child: Text("BackDropFilter1")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BadgesPage()),
                        );
                      },
                      child: Text("Badges Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ContainerTransformationPage()),
                        );
                      },
                      child: Text("Container transformation Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CustomScrollViewExamples()),
                        );
                      },
                      child: Text("CustomScrollViewExamples")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CuportinoSlidingSegmentedConrtolPage()),
                        );
                      },
                      child: Text("Cuportino Sliding Segmented Conrtol Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckboxListTilePage()),
                        );
                      },
                      child: Text("Checkbox ListTile Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CupertinoContextMenuPage()),
                        );
                      },
                      child: Text("Cupertino context Menu Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreditCardPage()),
                        );
                      },
                      child: Text("Credit card")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CircleMenuPage()),
                        );
                      },
                      child: Text("Circle Menu")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CircleListPage()),
                        );
                      },
                      child: Text("CircleListPage")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CircleListMenuPage()),
                        );
                      },
                      child: Text("CircleListMenuPage")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChipsPage()),
                        );
                      },
                      child: Text("ChipsPage")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChartPage()),
                        );
                      },
                      child: Text("Chart Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ClipPaintersExamples()),
                        );
                      },
                      child: Text("ClipperExample")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DropDownButtonPage()),
                        );
                      },
                      child: Text("DropDown Button Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const DayNightTimePickerPage()),
                        );
                      },
                      child: Text("Day night time picker")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DelayDisplayPage()),
                        );
                      },
                      child: Text("Delay Display")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DottedBorderPage()),
                        );
                      },
                      child: Text("Dotted border")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const DashRotateBorderProfile()),
                        );
                      },
                      child: Text("Dotted Rotate border")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DataPickerExample()),
                        );
                      },
                      child: Text("DataPickerExample")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DismissableListItemSwipeLeftPage()),
                        );
                      },
                      child: Text("Dismissable ListItem Swipe Left Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DraggableScrollableSheetPage()),
                        );
                      },
                      child: Text("Draggable Scrollable Sheet Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExpandableTextPage(),
                            ));
                      },
                      child: Text("Expandable text")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExpansionTilePage()),
                        );
                      },
                      child: Text("ExpansionTile Page")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExpansionTileCardPage()),
                        );
                      },
                      child: Text("ExpansionTile Card Page")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExpandableListPage()),
                        );
                      },
                      child: Text("Expandable List Page")),


                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const FlutterSlidableScreen()),
                        );
                      },
                      child: Text("FlutterSlidableExample")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const FadeOutParticleScreen()),
                        );
                      },
                      child: Text("FadeOutParticleExample")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FlipCardPage()),
                        );
                      },
                      child: Text("Flip card")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FadeInOut()),
                        );
                      },
                      child: Text("Fade in/out")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GlassmorphismPage()),
                        );
                      },
                      child: Text("Glassmorphism Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GridTilePage()),
                        );
                      },
                      child: Text("Grid Tile Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HeroScreen()),
                        );
                      },
                      child: Text("Hero Transition Animation Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InteractiveViewerPage()),
                        );
                      },
                      child: Text("Interactive Viewer")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => IndexedStackPage()),
                        );
                      },
                      child: Text("Indexed Stack Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const LoadingAnimationExample()),
                        );
                      },
                      child: Text("LoadingAnimationExample")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LikeButtonPage()),
                        );
                      },
                      child: Text("Like button")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LongPressDraggablePage()),
                        );
                      },
                      child: Text("Long press draggable")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const LiquidPullToRefreshPage()),
                        );
                      },
                      child: Text("Liquid Pull To Refresh Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MovingColorPage()),
                        );
                      },
                      child: Text("Moving Color Border")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BannerPage()),
                        );
                      },
                      child: Text("Material Banner")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const MatrixTransitionExample()),
                        );
                      },
                      child: Text("MatrixTransition")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  LayoutBuilderPortraitLandscape()),
                        );
                      },
                      child: Text("LayoutBuilder Portrait Landscape")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PinCodeFieldsExample()),
                        );
                      },
                      child: Text("PinCodeFieldsExamples")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PopupMenuItemPage()),
                        );
                      },
                      child: Text("Popup Menu Item Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PositionedScreen()),
                        );
                      },
                      child: Text("Positioned Screen")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RadioListTilePage()),
                        );
                      },
                      child: Text("RadioListTile Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReorderableListViewPage()),
                        );
                      },
                      child: Text("Reorderable ListView Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RefreshIndicatorPage()),
                        );
                      },
                      child: Text("Refresh Indicator Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RadialGaugeScreen()),
                        );
                      },
                      child: Text("Radial Gauge Screen")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const StickyHeadersExamples()),
                        );
                      },
                      child: Text("StickyHeadersExamples")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SlideSwitcherPage()),
                        );
                      },
                      child: Text("SlideSwitcherPage")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SolarDatePickerScreen()),
                        );
                      },
                      child: Text("SolarDatePickerScreen")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StarMenuPage()),
                        );
                      },
                      child: Text("Star menu")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StepperPage()),
                        );
                      },
                      child: Text("Stepper Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SliderPage()),
                        );
                      },
                      child: Text("Slider Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SliverTabbar()),
                        );
                      },
                      child: Text("Sliver_Tabbar Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ShimmerImageCacheScreen()),
                        );
                      },
                      child: Text("Shimmer Image Cache Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ShakeTextFieldScreen()),
                        );
                      },
                      child: Text("Shake TextField Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnimateTextKitPage()),
                        );
                      },
                      child: Text("Text kit animation")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TransitionPage()),
                        );
                      },
                      child: Text("Transition")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TweenAnimationPage()),
                        );
                      },
                      child: Text("Tween Animation")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ToastPage()),
                        );
                      },
                      child: Text("Toast page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ToastSwapDismissablePage()),
                        );
                      },
                      child: Text("Toast swap dismissable page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TablePage()),
                        );
                      },
                      child: Text("Table Page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VirtualKeyboard()),
                        );
                      },
                      child: Text("Virtual Keyboard page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const VirtualKeyboardCleanScreen()),
                        );
                      },
                      child: Text("Virtual Keyboard clean page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WrapChipPage()),
                        );
                      },
                      child: Text("Wrap Chip Page")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GlobeScreen()),
                        );
                      },
                      child: Text("Globe page")),


                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LocalHeroTransformScreen()),
                        );
                      },
                      child: Text("LocalHeroTransform page")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LottieScreen()),
                        );
                      },
                      child: Text("Lottie page")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MotionTabBarScreen()),
                        );
                      },
                      child: Text("MotionTabBar page")),


                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StaggerAnimationScreen()),
                        );
                      },
                      child: Text("Stagger Animation page")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SmoothPageIndicatorScreen()),
                        );
                      },
                      child: Text("SmoothPageIndicator page")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CarouselSliderScreen()),
                        );
                      },
                      child: Text("CarouselSlider page")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PhotoViewExample()),
                        );
                      },
                      child: Text("PhotoView page")),


                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ListViewScrollViewPage()),
                        );
                      },
                      child: Text("ListViewScrollView page")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MoreScreen()),
                        );
                      },
                      child: Text("More page")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ElegantNotificationScreen()),
                        );
                      },
                      child: Text("Elegant Notification Screen")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TabbarCustomizedScreen()),
                        );
                      },
                      child: Text("Tabbar Customized Screen")),


                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MotionWidgetScreen()),
                        );
                      },
                      child: Text("Motion Widgets Screen")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CircularProgressBarScreen()),
                        );
                      },
                      child: Text("CircularProgressBar Screen")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CircularSeekbarScreen()),
                        );
                      },
                      child: Text("CircularSeekba Screen")),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
