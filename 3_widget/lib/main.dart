import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/pages/accessibility/accessibility_page.dart';
import 'package:flutter_widget/pages/accessibility/example/exclude_semantics_example.dart';
import 'package:flutter_widget/pages/accessibility/example/merge_semantics_example.dart';
import 'package:flutter_widget/pages/accessibility/example/semantics_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/animation_and_motion_page.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_align_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_builder_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_container_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_cross_fade_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_default_text_style_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_list_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_list_state_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_modal_barrier_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_opacity_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_physical_model_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_positioned_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_size_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/animated_widget_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/decorated_box_transition_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/fade_transition_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/hero_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/implicitly_animated_widget_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/positioned_transition_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/rotation_transition_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/scale_transition_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/size_transition_example.dart';
import 'package:flutter_widget/pages/animationAndMotion/example/slide_transition_example.dart';
import 'package:flutter_widget/pages/assetsImagesAndIcons/assets_images_and_icons_page.dart';
import 'package:flutter_widget/pages/assetsImagesAndIcons/example/asset_bundle_example.dart';
import 'package:flutter_widget/pages/assetsImagesAndIcons/example/raw_image_example.dart';
import 'package:flutter_widget/pages/async/async_page.dart';
import 'package:flutter_widget/pages/async/example/future_builder_example.dart';
import 'package:flutter_widget/pages/async/example/stream_builder_example.dart';
import 'package:flutter_widget/pages/basics/basics_page.dart';
import 'package:flutter_widget/pages/basics/example/app_bar_example.dart';
import 'package:flutter_widget/pages/basics/example/column_example.dart';
import 'package:flutter_widget/pages/basics/example/container_example.dart';
import 'package:flutter_widget/pages/basics/example/elevated_button_example.dart';
import 'package:flutter_widget/pages/basics/example/flutter_logo_example.dart';
import 'package:flutter_widget/pages/basics/example/icon_example.dart';
import 'package:flutter_widget/pages/basics/example/image_example.dart';
import 'package:flutter_widget/pages/basics/example/outlined_button_example.dart';
import 'package:flutter_widget/pages/basics/example/placeholder_example.dart';
import 'package:flutter_widget/pages/basics/example/row_example.dart';
import 'package:flutter_widget/pages/basics/example/scaffold_example.dart';
import 'package:flutter_widget/pages/basics/example/text_button_example.dart';
import 'package:flutter_widget/pages/basics/example/text_example.dart';
import 'package:flutter_widget/pages/cupertino/cupertino_page.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_action_sheet_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_activity_indicator_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_alert_dialog_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_button_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_context_menu_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_date_picker_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_full_screen_dialog_transition_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_list_section_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_list_tile_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_navigation_bar_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_page_scaffold_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_page_transition_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_picker_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_popup_surface_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_search_text_field_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_segmented_control_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_slider_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_sliding_segmented_control_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_sliver_navigation_bar_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_switch_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_tab_bar_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_tab_scaffold_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_tab_view_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_text_field_example.dart';
import 'package:flutter_widget/pages/cupertino/example/cupertino_timer_picker_example.dart';
import 'package:flutter_widget/pages/input/example/autocomplete_example.dart';
import 'package:flutter_widget/pages/input/example/form_example.dart';
import 'package:flutter_widget/pages/input/example/form_field_example.dart';
import 'package:flutter_widget/pages/input/example/raw_keyboard_listener.dart';
import 'package:flutter_widget/pages/input/input_page.dart';
import 'package:flutter_widget/pages/interactionModels/example/absorb_pointer_example.dart';
import 'package:flutter_widget/pages/interactionModels/example/dismissible_example.dart';
import 'package:flutter_widget/pages/interactionModels/example/drag_target_example.dart';
import 'package:flutter_widget/pages/interactionModels/example/draggable_example.dart';
import 'package:flutter_widget/pages/interactionModels/example/draggable_scrollable_sheet_example.dart';
import 'package:flutter_widget/pages/interactionModels/example/gesture_detector_example.dart';
import 'package:flutter_widget/pages/interactionModels/example/ignore_pointer_example.dart';
import 'package:flutter_widget/pages/interactionModels/example/interactive_viewer_example.dart';
import 'package:flutter_widget/pages/interactionModels/example/long_press_draggable_example.dart';
import 'package:flutter_widget/pages/interactionModels/example/scrollable_example.dart';
import 'package:flutter_widget/pages/interactionModels/interaction_models_page.dart';
import 'package:flutter_widget/pages/layout/example/multiChildLayoutWidgets/custom_multi_child_layout_example.dart';
import 'package:flutter_widget/pages/layout/example/multiChildLayoutWidgets/flow_example.dart';
import 'package:flutter_widget/pages/layout/example/multiChildLayoutWidgets/grid_view_example.dart';
import 'package:flutter_widget/pages/layout/example/multiChildLayoutWidgets/indexed_stack_example.dart';
import 'package:flutter_widget/pages/layout/example/multiChildLayoutWidgets/layout_builder_example.dart';
import 'package:flutter_widget/pages/layout/example/multiChildLayoutWidgets/list_view_example.dart';
import 'package:flutter_widget/pages/layout/example/multiChildLayoutWidgets/multi_child_layout_widgets.dart';
import 'package:flutter_widget/pages/layout/example/multiChildLayoutWidgets/stack_example.dart';
import 'package:flutter_widget/pages/layout/example/multiChildLayoutWidgets/table_example.dart';
import 'package:flutter_widget/pages/layout/example/multiChildLayoutWidgets/wrap_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/align_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/aspect_ratio_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/baseline_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/center_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/constrained_box_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/custom_single_child_layout_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/expanded_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/fitted_box_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/fractionally_sized_box_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/intrinsic_height_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/intrinsic_width_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/limited_box_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/overflow_box_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/padding_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/single_child_layout_widgets.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/sized_box_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/sized_overflow_box_example.dart';
import 'package:flutter_widget/pages/layout/example/singleChildLayoutWidgets/transform_example.dart';
import 'package:flutter_widget/pages/layout/example/sliverWidgets/custom_scroll_view_example.dart';
import 'package:flutter_widget/pages/layout/example/sliverWidgets/nested_scroll_view_example.dart';
import 'package:flutter_widget/pages/layout/example/sliverWidgets/nested_scroll_view_example2.dart';
import 'package:flutter_widget/pages/layout/example/sliverWidgets/sliver_widgets.dart';
import 'package:flutter_widget/pages/layout/layout_page.dart';
import 'package:flutter_widget/pages/material/actions/actions_page.dart';
import 'package:flutter_widget/pages/material/actions/example/common_buttons_example.dart';
import 'package:flutter_widget/pages/material/actions/example/fab_example.dart';
import 'package:flutter_widget/pages/material/actions/example/icon_button_example.dart';
import 'package:flutter_widget/pages/material/actions/example/segmented_button_example.dart';
import 'package:flutter_widget/pages/material/communication/communication_page.dart';
import 'package:flutter_widget/pages/material/communication/example/badge_example.dart';
import 'package:flutter_widget/pages/material/communication/example/progress_indicator_example.dart';
import 'package:flutter_widget/pages/material/communication/example/snackbar_example.dart';
import 'package:flutter_widget/pages/material/containment/containment_page.dart';
import 'package:flutter_widget/pages/material/containment/example/bottom_sheet_example.dart';
import 'package:flutter_widget/pages/material/containment/example/card_example.dart';
import 'package:flutter_widget/pages/material/containment/example/dialog_example.dart';
import 'package:flutter_widget/pages/material/containment/example/divider_example.dart';
import 'package:flutter_widget/pages/material/containment/example/list_tile_example.dart';
import 'package:flutter_widget/pages/material/material_page.dart';
import 'package:flutter_widget/pages/material/navigation/example/bottom_app_bar_example.dart';
import 'package:flutter_widget/pages/material/navigation/example/navigation_bar_example.dart';
import 'package:flutter_widget/pages/material/navigation/example/navigation_drawer_example.dart';
import 'package:flutter_widget/pages/material/navigation/example/navigation_rail_example.dart';
import 'package:flutter_widget/pages/material/navigation/example/tab_bar_example.dart';
import 'package:flutter_widget/pages/material/navigation/navigation_page.dart';
import 'package:flutter_widget/pages/material/selection/example/checkbox_example.dart';
import 'package:flutter_widget/pages/material/selection/example/chip_example.dart';
import 'package:flutter_widget/pages/material/selection/example/date_picker_example.dart';
import 'package:flutter_widget/pages/material/selection/example/popup_menu_example.dart';
import 'package:flutter_widget/pages/material/selection/example/radio_button_example.dart';
import 'package:flutter_widget/pages/material/selection/example/slider_example.dart';
import 'package:flutter_widget/pages/material/selection/example/switch_example.dart';
import 'package:flutter_widget/pages/material/selection/example/time_picker_example.dart';
import 'package:flutter_widget/pages/material/selection/selection_page.dart';
import 'package:flutter_widget/pages/material/textInputs/example/text_field_example.dart';
import 'package:flutter_widget/pages/material/textInputs/text_inputs_page.dart';
import 'package:flutter_widget/pages/others/others_page.dart';
import 'package:flutter_widget/pages/paintingAndEffects/example/backdrop_filter_example.dart';
import 'package:flutter_widget/pages/paintingAndEffects/example/clip_oval_example.dart';
import 'package:flutter_widget/pages/paintingAndEffects/example/clip_path_example.dart';
import 'package:flutter_widget/pages/paintingAndEffects/example/clip_r_rect_example.dart';
import 'package:flutter_widget/pages/paintingAndEffects/example/clip_rect_example.dart';
import 'package:flutter_widget/pages/paintingAndEffects/example/color_filter_example.dart';
import 'package:flutter_widget/pages/paintingAndEffects/example/custom_paint_example.dart';
import 'package:flutter_widget/pages/paintingAndEffects/example/decorated_box_example.dart';
import 'package:flutter_widget/pages/paintingAndEffects/example/fractional_translation_example.dart';
import 'package:flutter_widget/pages/paintingAndEffects/example/opacity_example.dart';
import 'package:flutter_widget/pages/paintingAndEffects/example/rotated_box_example.dart';
import 'package:flutter_widget/pages/paintingAndEffects/painting_and_effects_page.dart';
import 'package:flutter_widget/pages/scrolling/example/notification_listener_example.dart';
import 'package:flutter_widget/pages/scrolling/example/page_view_example.dart';
import 'package:flutter_widget/pages/scrolling/example/refresh_indicator_example.dart';
import 'package:flutter_widget/pages/scrolling/example/reorderable_list_view_example.dart';
import 'package:flutter_widget/pages/scrolling/example/scroll_configuration_example.dart';
import 'package:flutter_widget/pages/scrolling/example/scrollbar_example.dart';
import 'package:flutter_widget/pages/scrolling/example/single_child_scroll_view_example.dart';
import 'package:flutter_widget/pages/scrolling/scrolling_page.dart';
import 'package:flutter_widget/pages/styling/example/media_query_example.dart';
import 'package:flutter_widget/pages/styling/example/theme_example.dart';
import 'package:flutter_widget/pages/styling/styling_page.dart';
import 'package:flutter_widget/pages/text/example/default_text_style_example.dart';
import 'package:flutter_widget/pages/text/example/rich_text_example.dart';
import 'package:flutter_widget/pages/text/text_page.dart';
import 'package:go_router/go_router.dart';
import 'package:random_color/random_color.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

/// 참조 링크 : https://docs.flutter.dev/ui/widgets
void main() {
  // 위젯 바인딩
  WidgetsFlutterBinding.ensureInitialized();

  // 가로모드 제어
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // 앱 실행
  runApp(
    MaterialApp.router(
      scrollBehavior: EffectlessScrollBehavior(),
      routerConfig: router,
      theme: ThemeData(useMaterial3: true),
    ),
  );
}

/// 현재 로케이션 : GoRouterState.of(context).uri.path
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const MainScreen(),
      routes: [
        GoRoute(
          path: 'accessibility',
          builder: (_, __) => const AccessibilityPage(),
          routes: [
            GoRoute(
              path: 'ExcludeSemanticsExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ExcludeSemanticsExample(),
              ),
            ),
            GoRoute(
              path: 'MergeSemanticsExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: MergeSemanticsExample(),
              ),
            ),
            GoRoute(
              path: 'SemanticsExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: SemanticsExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'animation',
          builder: (_, __) => const AnimationAndMotionPage(),
          routes: [
            GoRoute(
              path: 'AnimatedAlignExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedAlignExample(),
              ),
            ),
            GoRoute(
              path: 'AnimatedBuilderExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedBuilderExample(),
              ),
            ),
            GoRoute(
              path: 'AnimatedContainerExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedContainerExample(),
              ),
            ),
            GoRoute(
              path: 'AnimatedCrossFadeExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedCrossFadeExample(),
              ),
            ),
            GoRoute(
              path: 'AnimatedDefaultTextStyleExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedDefaultTextStyleExample(),
              ),
            ),
            GoRoute(
              path: 'AnimatedListExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedListExample(),
              ),
            ),
            GoRoute(
              path: 'AnimatedListStateExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedListStateExample(),
              ),
            ),
            GoRoute(
              path: 'AnimatedModalBarrierExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedModalBarrierExample(),
              ),
            ),
            GoRoute(
              path: 'AnimatedOpacityExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedOpacityExample(),
              ),
            ),
            GoRoute(
              path: 'AnimatedPhysicalModelExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedPhysicalModelExample(),
              ),
            ),
            GoRoute(
              path: 'AnimatedPositionedExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedPositionedExample(),
              ),
            ),
            GoRoute(
              path: 'AnimatedSizeExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedSizeExample(),
              ),
            ),
            GoRoute(
              path: 'AnimatedWidgetExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AnimatedWidgetExample(),
              ),
            ),
            GoRoute(
              path: 'DecoratedBoxTransitionExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: DecoratedBoxTransitionExample(),
              ),
            ),
            GoRoute(
              path: 'FadeTransitionExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: FadeTransitionExample(),
              ),
            ),
            GoRoute(
              path: 'HeroExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: HeroExample(),
              ),
            ),
            GoRoute(
              path: 'ImplicitlyAnimatedWidgetExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ImplicitlyAnimatedWidgetExample(),
              ),
            ),
            GoRoute(
              path: 'PositionedTransitionExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: PositionedTransitionExample(),
              ),
            ),
            GoRoute(
              path: 'RotationTransitionExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: RotationTransitionExample(),
              ),
            ),
            GoRoute(
              path: 'ScaleTransitionExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ScaleTransitionExample(),
              ),
            ),
            GoRoute(
              path: 'SizeTransitionExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: SizeTransitionExample(),
              ),
            ),
            GoRoute(
              path: 'SlideTransitionExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: SlideTransitionExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'assets',
          builder: (_, __) => const AssetsImagesAndIconsPage(),
          routes: [
            GoRoute(
              path: 'AssetBundleExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AssetBundleExample(),
              ),
            ),
            GoRoute(
              path: 'IconExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: IconExample(),
              ),
            ),
            GoRoute(
              path: 'ImageExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ImageExample(),
              ),
            ),
            GoRoute(
              path: 'RawImageExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: RawImageExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'async',
          builder: (_, __) => const AsyncPage(),
          routes: [
            GoRoute(
              path: 'FutureBuilderExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: FutureBuilderExample(),
              ),
            ),
            GoRoute(
              path: 'StreamBuilderExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: StreamBuilderExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'basics',
          builder: (_, __) => const BasicsPage(),
          routes: [
            GoRoute(
              path: 'AppBarExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AppBarExample(),
              ),
            ),
            GoRoute(
              path: 'ColumnExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ColumnExample(),
              ),
            ),
            GoRoute(
              path: 'ContainerExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ContainerExample(),
              ),
            ),
            GoRoute(
              path: 'ElevatedButtonExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ElevatedButtonExample(),
              ),
            ),
            GoRoute(
              path: 'FlutterLogoExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: FlutterLogoExample(),
              ),
            ),
            GoRoute(
              path: 'IconExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: IconExample(),
              ),
            ),
            GoRoute(
              path: 'ImageExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ImageExample(),
              ),
            ),
            GoRoute(
              path: 'OutlinedButtonExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: OutlinedButtonExample(),
              ),
            ),
            GoRoute(
              path: 'PlaceholderExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: PlaceholderExample(),
              ),
            ),
            GoRoute(
              path: 'RowExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: RowExample(),
              ),
            ),
            GoRoute(
              path: 'ScaffoldExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ScaffoldExample(),
              ),
            ),
            GoRoute(
              path: 'TextButtonExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: TextButtonExample(),
              ),
            ),
            GoRoute(
              path: 'TextExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: TextExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'cupertino',
          builder: (_, __) => const CupertinoComponentsPage(),
          routes: [
            GoRoute(
              path: 'CupertinoActionSheetExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoActionSheetExample).underscoreCaseName}.dart',
                child: const CupertinoActionSheetExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoActivityIndicatorExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoActivityIndicatorExample).underscoreCaseName}.dart',
                child: const CupertinoActivityIndicatorExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoAlertDialogExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoAlertDialogExample).underscoreCaseName}.dart',
                child: const CupertinoAlertDialogExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoButtonExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoButtonExample).underscoreCaseName}.dart',
                child: const CupertinoButtonExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoContextMenuExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoContextMenuExample).underscoreCaseName}.dart',
                child: const CupertinoContextMenuExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoDatePickerExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoDatePickerExample).underscoreCaseName}.dart',
                child: const CupertinoDatePickerExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoAlertDialogExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoAlertDialogExample).underscoreCaseName}.dart',
                child: const CupertinoAlertDialogExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoFullscreenDialogTransitionExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath:
                    'lib/pages/cupertino/example/${(CupertinoFullscreenDialogTransitionExample).underscoreCaseName}.dart',
                child: const CupertinoFullscreenDialogTransitionExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoListSectionExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoListSectionExample).underscoreCaseName}.dart',
                child: const CupertinoListSectionExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoListTileExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoListTileExample).underscoreCaseName}.dart',
                child: const CupertinoListTileExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoNavigationBarExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoNavigationBarExample).underscoreCaseName}.dart',
                child: const CupertinoNavigationBarExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoPageScaffoldExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoPageScaffoldExample).underscoreCaseName}.dart',
                child: const CupertinoPageScaffoldExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoPageTransitionExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoPageTransitionExample).underscoreCaseName}.dart',
                child: const CupertinoPageTransitionExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoPickerExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoPickerExample).underscoreCaseName}.dart',
                child: const CupertinoPickerExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoPopupSurfaceExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoPopupSurfaceExample).underscoreCaseName}.dart',
                child: const CupertinoPopupSurfaceExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoSearchTextFieldExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoSearchTextFieldExample).underscoreCaseName}.dart',
                child: const CupertinoSearchTextFieldExample(),
              ),
            ),
            GoRoute(
              path: 'SegmentedControlExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(SegmentedControlExample).underscoreCaseName}.dart',
                child: const SegmentedControlExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoSliderExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoSliderExample).underscoreCaseName}.dart',
                child: const CupertinoSliderExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoSlidingSegmentedControlExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath:
                    'lib/pages/cupertino/example/${(CupertinoSlidingSegmentedControlExample).underscoreCaseName}.dart',
                child: const CupertinoSlidingSegmentedControlExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoSliverNavigationBarExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath:
                    'lib/pages/cupertino/example/${(CupertinoSliverNavigationBarExample).underscoreCaseName}.dart',
                child: const CupertinoSliverNavigationBarExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoSwitchExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoSwitchExample).underscoreCaseName}.dart',
                child: const CupertinoSwitchExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoTabBarExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoTabBarExample).underscoreCaseName}.dart',
                child: const CupertinoTabBarExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoTabScaffoldExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoTabScaffoldExample).underscoreCaseName}.dart',
                child: const CupertinoTabScaffoldExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoTabViewExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoTabViewExample).underscoreCaseName}.dart',
                child: const CupertinoTabViewExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoTextFieldExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoTextFieldExample).underscoreCaseName}.dart',
                child: const CupertinoTextFieldExample(),
              ),
            ),
            GoRoute(
              path: 'CupertinoTimerPickerExample',
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoTimerPickerExample).underscoreCaseName}.dart',
                child: const CupertinoTimerPickerExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'input',
          builder: (_, __) => const InputPage(),
          routes: [
            GoRoute(
              path: 'AutocompleteBasicExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AutocompleteBasicExample(),
              ),
            ),
            GoRoute(
              path: 'FormExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: FormExample(),
              ),
            ),
            GoRoute(
              path: 'FormFieldExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: FormFieldExample(),
              ),
            ),
            GoRoute(
              path: 'KeyboardListenerExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: KeyboardListenerExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'interaction',
          builder: (_, __) => const InteractionModelsPage(),
          routes: [
            GoRoute(
              path: 'AbsorbPointerExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: AbsorbPointerExample(),
              ),
            ),
            GoRoute(
              path: 'DismissibleExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: DismissibleExample(),
              ),
            ),
            GoRoute(
              path: 'DragTargetExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: DragTargetExample(),
              ),
            ),
            GoRoute(
              path: 'DraggableExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: DraggableExample(),
              ),
            ),
            GoRoute(
              path: 'DraggableScrollableSheetExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: DraggableScrollableSheetExample(),
              ),
            ),
            GoRoute(
              path: 'GestureDetectorExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: GestureDetectorExample(),
              ),
            ),
            GoRoute(
              path: 'IgnorePointerExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: IgnorePointerExample(),
              ),
            ),
            GoRoute(
              path: 'InteractiveViewerExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: InteractiveViewerExample(),
              ),
            ),
            GoRoute(
              path: 'LongPressDraggableExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: LongPressDraggableExample(),
              ),
            ),
            GoRoute(
              path: 'ScrollableExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ScrollableExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'layout',
          builder: (_, __) => const LayoutPage(),
          routes: [
            GoRoute(
              path: 'MultiChildLayoutWidgets',
              builder: (_, __) => const MultiChildLayoutWidgets(),
              routes: [
                GoRoute(
                  path: 'ColumnExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: ColumnExample(),
                  ),
                ),
                GoRoute(
                  path: 'CustomMultiChildLayoutExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: CustomMultiChildLayoutExample(),
                  ),
                ),
                GoRoute(
                  path: 'FlowExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: FlowExample(),
                  ),
                ),
                GoRoute(
                  path: 'GridViewExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: GridViewExample(),
                  ),
                ),
                GoRoute(
                  path: 'IndexedStackExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: IndexedStackExample(),
                  ),
                ),
                GoRoute(
                  path: 'LayoutBuilderExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: LayoutBuilderExample(),
                  ),
                ),
                GoRoute(
                  path: 'ListViewExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: ListViewExample(),
                  ),
                ),
                GoRoute(
                  path: 'RowExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: RowExample(),
                  ),
                ),
                GoRoute(
                  path: 'StackExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: StackExample(),
                  ),
                ),
                GoRoute(
                  path: 'TableExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: TableExample(),
                  ),
                ),
                GoRoute(
                  path: 'WrapExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: WrapExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: 'SingleChildLayoutWidgets',
              builder: (_, __) => const SingleChildLayoutWidgets(),
              routes: [
                GoRoute(
                  path: 'AlignExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: AlignExample(),
                  ),
                ),
                GoRoute(
                  path: 'AspectRatioExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: AspectRatioExample(),
                  ),
                ),
                GoRoute(
                  path: 'BaselineExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: BaselineExample(),
                  ),
                ),
                GoRoute(
                  path: 'CenterExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: CenterExample(),
                  ),
                ),
                GoRoute(
                  path: 'ConstrainedBoxExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: ConstrainedBoxExample(),
                  ),
                ),
                GoRoute(
                  path: 'ContainerExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: ContainerExample(),
                  ),
                ),
                GoRoute(
                  path: 'CustomSingleChildLayoutExample',
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: '',
                    child: CustomSingleChildLayoutExample(),
                  ),
                ),
                GoRoute(
                  path: 'ExpandedExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: ExpandedExample(),
                  ),
                ),
                GoRoute(
                  path: 'FittedBoxExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: FittedBoxExample(),
                  ),
                ),
                GoRoute(
                  path: 'FractionallySizedBoxExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: FractionallySizedBoxExample(),
                  ),
                ),
                GoRoute(
                  path: 'IntrinsicHeightExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: IntrinsicHeightExample(),
                  ),
                ),
                GoRoute(
                  path: 'IntrinsicWidthExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: IntrinsicWidthExample(),
                  ),
                ),
                GoRoute(
                  path: 'LimitedBoxExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: LimitedBoxExample(),
                  ),
                ),
                GoRoute(
                  path: 'OverflowBoxExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: OverflowBoxExample(),
                  ),
                ),
                GoRoute(
                  path: 'PaddingExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: PaddingExample(),
                  ),
                ),
                GoRoute(
                  path: 'SizedBoxExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: SizedBoxExample(),
                  ),
                ),
                GoRoute(
                  path: 'SizedOverflowBoxExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: SizedOverflowBoxExample(),
                  ),
                ),
                GoRoute(
                  path: 'TransformExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: TransformExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: 'SliverWidgets',
              builder: (_, __) => const SliverWidgets(),
              routes: [
                GoRoute(
                  path: 'CustomScrollViewExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: CustomScrollViewExample(),
                  ),
                ),
                GoRoute(
                  path: 'NestedScrollViewExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: NestedScrollViewExample(),
                  ),
                ),
                GoRoute(
                  path: 'NestedScrollViewExample2',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: NestedScrollViewExample2(),
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: 'material',
          builder: (_, __) => const MaterialComponentsPage(),
          routes: [
            GoRoute(
              path: 'ActionsExample',
              builder: (_, __) => const ActionsPage(),
              routes: [
                GoRoute(
                  path: 'CommonButtonsExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: CommonButtonsExample(),
                  ),
                ),
                GoRoute(
                  path: 'FABExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: FABExample(),
                  ),
                ),
                GoRoute(
                  path: 'IconButtonExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: IconButtonExample(),
                  ),
                ),
                GoRoute(
                  path: 'SegmentedButtonExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: SegmentedButtonExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: 'CommunicationExample',
              builder: (_, __) => const CommunicationPage(),
              routes: [
                GoRoute(
                  path: 'BadgeExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: BadgeExample(),
                  ),
                ),
                GoRoute(
                  path: 'ProgressIndicatorExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: ProgressIndicatorExample(),
                  ),
                ),
                GoRoute(
                  path: 'SnackBarExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: SnackBarExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: 'ContainmentExample',
              builder: (_, __) => const ContainmentPage(),
              routes: [
                GoRoute(
                  path: 'BottomSheetExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: 'lib/pages/material/containment/example/bottom_sheet_example.dart',
                    child: BottomSheetExample(),
                  ),
                ),
                GoRoute(
                  path: 'CardExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: CardExample(),
                  ),
                ),
                GoRoute(
                  path: 'DialogExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: DialogExample(),
                  ),
                ),
                GoRoute(
                  path: 'DividerExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: DividerExample(),
                  ),
                ),
                GoRoute(
                  path: 'ListTileExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: ListTileExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: 'NavigationExample',
              builder: (_, __) => const NavigationPage(),
              routes: [
                GoRoute(
                  path: 'AppBarExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: AppBarExample(),
                  ),
                ),
                GoRoute(
                  path: 'BottomAppBarExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: BottomAppBarExample(),
                  ),
                ),
                GoRoute(
                  path: 'NavigationBarExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: NavigationBarExample(),
                  ),
                ),
                GoRoute(
                  path: 'NavigationDrawerExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: NavigationDrawerExample(),
                  ),
                ),
                GoRoute(
                  path: 'NavigationRailExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: NavigationRailExample(),
                  ),
                ),
                GoRoute(
                  path: 'TabBarExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: TabBarExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: 'SelectionExample',
              builder: (_, __) => const SelectionPage(),
              routes: [
                GoRoute(
                  path: 'CheckboxExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: CheckboxExample(),
                  ),
                ),
                GoRoute(
                  path: 'ChipExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: ChipExample(),
                  ),
                ),
                GoRoute(
                  path: 'DatePickerExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: DatePickerExample(),
                  ),
                ),
                GoRoute(
                  path: 'PopupMenuExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: PopupMenuExample(),
                  ),
                ),
                GoRoute(
                  path: 'RadioExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: RadioExample(),
                  ),
                ),
                GoRoute(
                  path: 'SliderExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: SliderExample(),
                  ),
                ),
                GoRoute(
                  path: 'SwitchExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: SwitchExample(),
                  ),
                ),
                GoRoute(
                  path: 'TimePickerExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: TimePickerExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: 'TextInpusExample',
              builder: (_, __) => const TextInpusPage(),
              routes: [
                GoRoute(
                  path: 'TextFieldExample',
                  builder: (_, __) => const CustomWidgetCodeView(
                    filePath: '',
                    child: TextFieldExample(),
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: 'others',
          builder: (_, __) => const OthersPage(),
        ),
        GoRoute(
          path: 'painting',
          builder: (_, __) => const PaintingAndEffectsPage(),
          routes: [
            GoRoute(
              path: 'BackdropFilterExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: BackdropFilterExample(),
              ),
            ),
            GoRoute(
              path: 'ClipOvalExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ClipOvalExample(),
              ),
            ),
            GoRoute(
              path: 'ClipPathExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ClipPathExample(),
              ),
            ),
            GoRoute(
              path: 'ClipRRectExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ClipRRectExample(),
              ),
            ),
            GoRoute(
              path: 'ClipRectExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ClipRectExample(),
              ),
            ),
            GoRoute(
              path: 'ColorFilteredExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ColorFilteredExample(),
              ),
            ),
            GoRoute(
              path: 'CustomPaintExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: CustomPaintExample(),
              ),
            ),
            GoRoute(
              path: 'DecoratedBoxExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: DecoratedBoxExample(),
              ),
            ),
            GoRoute(
              path: 'FractionalTranslationExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: FractionalTranslationExample(),
              ),
            ),
            GoRoute(
              path: 'OpacityExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: OpacityExample(),
              ),
            ),
            GoRoute(
              path: 'RotatedBoxExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: RotatedBoxExample(),
              ),
            ),
            GoRoute(
              path: 'TransformExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: TransformExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'scrolling',
          builder: (_, __) => const ScrollingPage(),
          routes: [
            GoRoute(
              path: 'CustomScrollViewExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: CustomScrollViewExample(),
              ),
            ),
            GoRoute(
              path: 'DraggableScrollableSheetExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: DraggableScrollableSheetExample(),
              ),
            ),
            GoRoute(
              path: 'GridViewExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: GridViewExample(),
              ),
            ),
            GoRoute(
              path: 'ListViewExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ListViewExample(),
              ),
            ),
            GoRoute(
              path: 'NestedScrollViewExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: NestedScrollViewExample(),
              ),
            ),
            GoRoute(
              path: 'NotificationListenerExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: NotificationListenerExample(),
              ),
            ),
            GoRoute(
              path: 'PageViewExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: PageViewExample(),
              ),
            ),
            GoRoute(
              path: 'RefreshIndicatorExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: RefreshIndicatorExample(),
              ),
            ),
            GoRoute(
              path: 'ReorderableExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ReorderableExample(),
              ),
            ),
            GoRoute(
              path: 'ScrollConfigurationExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ScrollConfigurationExample(),
              ),
            ),
            GoRoute(
              path: 'ScrollableExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ScrollableExample(),
              ),
            ),
            GoRoute(
              path: 'ScrollbarExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ScrollbarExample(),
              ),
            ),
            GoRoute(
              path: 'SingleChildScrollViewExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: SingleChildScrollViewExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'styling',
          builder: (_, __) => const StylingPage(),
          routes: [
            GoRoute(
              path: 'MediaQueryExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: MediaQueryExample(),
              ),
            ),
            GoRoute(
              path: 'PaddingExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: PaddingExample(),
              ),
            ),
            GoRoute(
              path: 'ThemeExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: ThemeExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'text',
          builder: (_, __) => const TextPage(),
          routes: [
            GoRoute(
              path: 'DefaultTextStyleExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: DefaultTextStyleExample(),
              ),
            ),
            GoRoute(
              path: 'RichTextExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: RichTextExample(),
              ),
            ),
            GoRoute(
              path: 'TextExample',
              builder: (_, __) => const CustomWidgetCodeView(
                filePath: '',
                child: TextExample(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
        centerTitle: true,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 2,
        children: [
          MyCardWidget(
            title: '접근성',
            onTap: () {
              context.push('/accessibility');
            },
          ),
          MyCardWidget(
            title: '애니메이션',
            onTap: () {
              context.push('/animation');
            },
          ),
          MyCardWidget(
            title: '자산',
            onTap: () {
              context.push('/assets');
            },
          ),
          MyCardWidget(
            title: '비동기',
            onTap: () {
              context.push('/async');
            },
          ),
          MyCardWidget(
            title: '기초',
            onTap: () {
              context.push('/basics');
            },
          ),
          MyCardWidget(
            title: '머티리얼',
            onTap: () {
              context.push('/material');
            },
          ),
          MyCardWidget(
            title: '쿠퍼티노',
            onTap: () {
              context.push('/cupertino');
            },
          ),
          MyCardWidget(
            title: '입력',
            onTap: () {
              context.push('/input');
            },
          ),
          MyCardWidget(
            title: '상호작용',
            onTap: () {
              context.push('/interaction');
            },
          ),
          MyCardWidget(
            title: '구성',
            onTap: () {
              context.push('/layout');
            },
          ),
          MyCardWidget(
            title: '그리기',
            onTap: () {
              context.push('/painting');
            },
          ),
          MyCardWidget(
            title: '스크롤',
            onTap: () {
              context.push('/scrolling');
            },
          ),
          MyCardWidget(
            title: '스타일링',
            onTap: () {
              context.push('/styling');
            },
          ),
          MyCardWidget(
            title: '텍스트',
            onTap: () {
              context.push('/text');
            },
          ),
          MyCardWidget(
            title: '기타',
            onTap: () {
              context.push('/others');
            },
          ),
        ],
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    var randomColor = RandomColor();
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: BorderSide(
            color: randomColor.randomColor(colorBrightness: ColorBrightness.light),
          ),
        ),
        elevation: 4.0, //그림자 깊이
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

class EffectlessScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class CustomWidgetCodeView extends StatelessWidget {
  const CustomWidgetCodeView({
    Key? key,
    required this.filePath,
    required this.child,
  }) : super(key: key);

  final String filePath;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.purple[300],
        tabBarTheme: Theme.of(context).tabBarTheme.copyWith(indicatorColor: Colors.purple[50]),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(child.toString()),
          centerTitle: true,
        ),
        body: WidgetWithCodeView(
          filePath: filePath,
          child: child,
        ),
      ),
    );
  }
}
