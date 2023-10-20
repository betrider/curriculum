import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget/extensions.dart';
import 'package:flutter_widget/pages/accessibility/accessibility_page.dart';
import 'package:flutter_widget/pages/accessibility/example/exclude_semantics_example.dart';
import 'package:flutter_widget/pages/accessibility/example/merge_semantics_example.dart';
import 'package:flutter_widget/pages/accessibility/example/semantics_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/animation_and_motion_page.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_align_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_builder_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_container_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_cross_fade_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_default_text_style_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_list_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_list_state_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_modal_barrier_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_opacity_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_physical_model_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_positioned_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_size_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/animated_widget_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/decorated_box_transition_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/fade_transition_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/hero_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/implicitly_animated_widget_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/positioned_transition_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/rotation_transition_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/scale_transition_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/size_transition_example.dart';
import 'package:flutter_widget/pages/animation_and_motion/example/slide_transition_example.dart';
import 'package:flutter_widget/pages/assets_images_and_icons/assets_images_and_icons_page.dart';
import 'package:flutter_widget/pages/assets_images_and_icons/example/asset_bundle_example.dart';
import 'package:flutter_widget/pages/assets_images_and_icons/example/raw_image_example.dart';
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
import 'package:flutter_widget/pages/interaction_models/example/absorb_pointer_example.dart';
import 'package:flutter_widget/pages/interaction_models/example/dismissible_example.dart';
import 'package:flutter_widget/pages/interaction_models/example/drag_target_example.dart';
import 'package:flutter_widget/pages/interaction_models/example/draggable_example.dart';
import 'package:flutter_widget/pages/interaction_models/example/draggable_scrollable_sheet_example.dart';
import 'package:flutter_widget/pages/interaction_models/example/gesture_detector_example.dart';
import 'package:flutter_widget/pages/interaction_models/example/ignore_pointer_example.dart';
import 'package:flutter_widget/pages/interaction_models/example/interactive_viewer_example.dart';
import 'package:flutter_widget/pages/interaction_models/example/long_press_draggable_example.dart';
import 'package:flutter_widget/pages/interaction_models/example/scrollable_example.dart';
import 'package:flutter_widget/pages/interaction_models/interaction_models_page.dart';
import 'package:flutter_widget/pages/layout/example/multi_child_layout_widgets/custom_multi_child_layout_example.dart';
import 'package:flutter_widget/pages/layout/example/multi_child_layout_widgets/flow_example.dart';
import 'package:flutter_widget/pages/layout/example/multi_child_layout_widgets/grid_view_example.dart';
import 'package:flutter_widget/pages/layout/example/multi_child_layout_widgets/indexed_stack_example.dart';
import 'package:flutter_widget/pages/layout/example/multi_child_layout_widgets/layout_builder_example.dart';
import 'package:flutter_widget/pages/layout/example/multi_child_layout_widgets/list_view_example.dart';
import 'package:flutter_widget/pages/layout/example/multi_child_layout_widgets/multi_child_layout_widgets_page.dart';
import 'package:flutter_widget/pages/layout/example/multi_child_layout_widgets/stack_example.dart';
import 'package:flutter_widget/pages/layout/example/multi_child_layout_widgets/table_example.dart';
import 'package:flutter_widget/pages/layout/example/multi_child_layout_widgets/wrap_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/align_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/aspect_ratio_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/baseline_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/center_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/constrained_box_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/custom_single_child_layout_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/expanded_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/fitted_box_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/fractionally_sized_box_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/intrinsic_height_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/intrinsic_width_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/limited_box_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/overflow_box_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/padding_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/single_child_layout_widgets_page.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/sized_box_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/sized_overflow_box_example.dart';
import 'package:flutter_widget/pages/layout/example/single_child_layout_widgets/transform_example.dart';
import 'package:flutter_widget/pages/layout/example/sliver_widgets/custom_scroll_view_example.dart';
import 'package:flutter_widget/pages/layout/example/sliver_widgets/nested_scroll_view_example.dart';
import 'package:flutter_widget/pages/layout/example/sliver_widgets/nested_scroll_view_example2.dart';
import 'package:flutter_widget/pages/layout/example/sliver_widgets/sliver_widgets_page.dart';
import 'package:flutter_widget/pages/layout/layout_page.dart';
import 'package:flutter_widget/pages/material/actions/actions_page.dart';
import 'package:flutter_widget/pages/material/actions/example/common_buttons_example.dart';
import 'package:flutter_widget/pages/material/actions/example/fab_example.dart';
import 'package:flutter_widget/pages/material/actions/example/icon_button_example.dart';
import 'package:flutter_widget/pages/material/actions/example/segmented_button_example.dart';
import 'package:flutter_widget/pages/material/communication/communication_page.dart';
import 'package:flutter_widget/pages/material/communication/example/badge_example.dart';
import 'package:flutter_widget/pages/material/communication/example/progress_indicator_example.dart';
import 'package:flutter_widget/pages/material/communication/example/snack_bar_example.dart';
import 'package:flutter_widget/pages/material/containment/containment_page.dart';
import 'package:flutter_widget/pages/material/containment/example/bottom_sheet_example.dart';
import 'package:flutter_widget/pages/material/containment/example/card_example.dart';
import 'package:flutter_widget/pages/material/containment/example/dialog_example.dart';
import 'package:flutter_widget/pages/material/containment/example/divider_example.dart';
import 'package:flutter_widget/pages/material/containment/example/list_tile_example.dart';
import 'package:flutter_widget/pages/material/material_page.dart';
import 'package:flutter_widget/pages/material/navigation/example/app_bar_example.dart' as material_app_bar;
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
import 'package:flutter_widget/pages/material/text_inputs/example/text_field_example.dart';
import 'package:flutter_widget/pages/material/text_inputs/text_inputs_page.dart';
import 'package:flutter_widget/pages/others/others_page.dart';
import 'package:flutter_widget/pages/painting_and_effects/example/backdrop_filter_example.dart';
import 'package:flutter_widget/pages/painting_and_effects/example/clip_oval_example.dart';
import 'package:flutter_widget/pages/painting_and_effects/example/clip_path_example.dart';
import 'package:flutter_widget/pages/painting_and_effects/example/clip_r_rect_example.dart';
import 'package:flutter_widget/pages/painting_and_effects/example/clip_rect_example.dart';
import 'package:flutter_widget/pages/painting_and_effects/example/color_filter_example.dart';
import 'package:flutter_widget/pages/painting_and_effects/example/custom_paint_example.dart';
import 'package:flutter_widget/pages/painting_and_effects/example/decorated_box_example.dart';
import 'package:flutter_widget/pages/painting_and_effects/example/fractional_translation_example.dart';
import 'package:flutter_widget/pages/painting_and_effects/example/opacity_example.dart';
import 'package:flutter_widget/pages/painting_and_effects/example/rotated_box_example.dart';
import 'package:flutter_widget/pages/painting_and_effects/painting_and_effects_page.dart';
import 'package:flutter_widget/pages/scrolling/example/notification_listener_example.dart';
import 'package:flutter_widget/pages/scrolling/example/page_view_example.dart';
import 'package:flutter_widget/pages/scrolling/example/refresh_indicator_example.dart';
import 'package:flutter_widget/pages/scrolling/example/reorderable_list_view_example.dart';
import 'package:flutter_widget/pages/scrolling/example/scroll_configuration_example.dart';
import 'package:flutter_widget/pages/scrolling/example/scrollbar_example.dart';
import 'package:flutter_widget/pages/scrolling/example/single_child_scroll_view_example.dart';
import 'package:flutter_widget/pages/scrolling/scrolling.dart' as scrolling;
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
          path: (AccessibilityPage).name,
          builder: (_, __) => const AccessibilityPage(),
          routes: [
            GoRoute(
              path: (ExcludeSemanticsExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/accessibility/example/${(ExcludeSemanticsExample).underscoreCaseName}.dart',
                child: const ExcludeSemanticsExample(),
              ),
            ),
            GoRoute(
              path: (MergeSemanticsExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/accessibility/example/${(MergeSemanticsExample).underscoreCaseName}.dart',
                child: const MergeSemanticsExample(),
              ),
            ),
            GoRoute(
              path: (SemanticsExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/accessibility/example/${(SemanticsExample).underscoreCaseName}.dart',
                child: const SemanticsExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: (AnimationAndMotionPage).name,
          builder: (_, __) => const AnimationAndMotionPage(),
          routes: [
            GoRoute(
              path: (AnimatedAlignExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedAlignExample).underscoreCaseName}.dart',
                child: const AnimatedAlignExample(),
              ),
            ),
            GoRoute(
              path: (AnimatedBuilderExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedBuilderExample).underscoreCaseName}.dart',
                child: const AnimatedBuilderExample(),
              ),
            ),
            GoRoute(
              path: (AnimatedContainerExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedContainerExample).underscoreCaseName}.dart',
                child: const AnimatedContainerExample(),
              ),
            ),
            GoRoute(
              path: (AnimatedCrossFadeExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedCrossFadeExample).underscoreCaseName}.dart',
                child: const AnimatedCrossFadeExample(),
              ),
            ),
            GoRoute(
              path: (AnimatedDefaultTextStyleExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedDefaultTextStyleExample).underscoreCaseName}.dart',
                child: const AnimatedDefaultTextStyleExample(),
              ),
            ),
            GoRoute(
              path: (AnimatedListExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedListExample).underscoreCaseName}.dart',
                child: const AnimatedListExample(),
              ),
            ),
            GoRoute(
              path: (AnimatedListStateExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedListStateExample).underscoreCaseName}.dart',
                child: const AnimatedListStateExample(),
              ),
            ),
            GoRoute(
              path: (AnimatedModalBarrierExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedModalBarrierExample).underscoreCaseName}.dart',
                child: const AnimatedModalBarrierExample(),
              ),
            ),
            GoRoute(
              path: (AnimatedOpacityExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedOpacityExample).underscoreCaseName}.dart',
                child: const AnimatedOpacityExample(),
              ),
            ),
            GoRoute(
              path: (AnimatedPhysicalModelExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedPhysicalModelExample).underscoreCaseName}.dart',
                child: const AnimatedPhysicalModelExample(),
              ),
            ),
            GoRoute(
              path: (AnimatedPositionedExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedPositionedExample).underscoreCaseName}.dart',
                child: const AnimatedPositionedExample(),
              ),
            ),
            GoRoute(
              path: (AnimatedSizeExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedSizeExample).underscoreCaseName}.dart',
                child: const AnimatedSizeExample(),
              ),
            ),
            GoRoute(
              path: (AnimatedWidgetExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(AnimatedWidgetExample).underscoreCaseName}.dart',
                child: const AnimatedWidgetExample(),
              ),
            ),
            GoRoute(
              path: (DecoratedBoxTransitionExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(DecoratedBoxTransitionExample).underscoreCaseName}.dart',
                child: const DecoratedBoxTransitionExample(),
              ),
            ),
            GoRoute(
              path: (FadeTransitionExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(FadeTransitionExample).underscoreCaseName}.dart',
                child: const FadeTransitionExample(),
              ),
            ),
            GoRoute(
              path: (HeroExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(HeroExample).underscoreCaseName}.dart',
                child: const HeroExample(),
              ),
            ),
            GoRoute(
              path: (ImplicitlyAnimatedWidgetExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(ImplicitlyAnimatedWidgetExample).underscoreCaseName}.dart',
                child: const ImplicitlyAnimatedWidgetExample(),
              ),
            ),
            GoRoute(
              path: (PositionedTransitionExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(PositionedTransitionExample).underscoreCaseName}.dart',
                child: const PositionedTransitionExample(),
              ),
            ),
            GoRoute(
              path: (RotationTransitionExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(RotationTransitionExample).underscoreCaseName}.dart',
                child: const RotationTransitionExample(),
              ),
            ),
            GoRoute(
              path: (ScaleTransitionExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(ScaleTransitionExample).underscoreCaseName}.dart',
                child: const ScaleTransitionExample(),
              ),
            ),
            GoRoute(
              path: (SizeTransitionExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(SizeTransitionExample).underscoreCaseName}.dart',
                child: const SizeTransitionExample(),
              ),
            ),
            GoRoute(
              path: (SlideTransitionExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/animation_and_motion/example/${(SlideTransitionExample).underscoreCaseName}.dart',
                child: const SlideTransitionExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: (AssetsImagesAndIconsPage).name,
          builder: (_, __) => const AssetsImagesAndIconsPage(),
          routes: [
            GoRoute(
              path: (AssetBundleExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/assets_images_and_icons/example/${(AssetBundleExample).underscoreCaseName}.dart',
                child: const AssetBundleExample(),
              ),
            ),
            GoRoute(
              path: (IconExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/assets_images_and_icons/example/${(IconExample).underscoreCaseName}.dart',
                child: const IconExample(),
              ),
            ),
            GoRoute(
              path: (ImageExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/assets_images_and_icons/example/${(ImageExample).underscoreCaseName}.dart',
                child: const ImageExample(),
              ),
            ),
            GoRoute(
              path: (RawImageExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/assets_images_and_icons/example/${(RawImageExample).underscoreCaseName}.dart',
                child: const RawImageExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: (AsyncPage).name,
          builder: (_, __) => const AsyncPage(),
          routes: [
            GoRoute(
              path: (FutureBuilderExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/async/example/${(FutureBuilderExample).underscoreCaseName}.dart',
                child: const FutureBuilderExample(),
              ),
            ),
            GoRoute(
              path: (StreamBuilderExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/async/example/${(StreamBuilderExample).underscoreCaseName}.dart',
                child: const StreamBuilderExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: (BasicsPage).name,
          builder: (_, __) => const BasicsPage(),
          routes: [
            GoRoute(
              path: (AppBarExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(AppBarExample).underscoreCaseName}.dart',
                child: const AppBarExample(),
              ),
            ),
            GoRoute(
              path: (ColumnExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(ColumnExample).underscoreCaseName}.dart',
                child: const ColumnExample(),
              ),
            ),
            GoRoute(
              path: (ContainerExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(ContainerExample).underscoreCaseName}.dart',
                child: const ContainerExample(),
              ),
            ),
            GoRoute(
              path: (ElevatedButtonExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(ElevatedButtonExample).underscoreCaseName}.dart',
                child: const ElevatedButtonExample(),
              ),
            ),
            GoRoute(
              path: (FlutterLogoExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(FlutterLogoExample).underscoreCaseName}.dart',
                child: const FlutterLogoExample(),
              ),
            ),
            GoRoute(
              path: (IconExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(IconExample).underscoreCaseName}.dart',
                child: const IconExample(),
              ),
            ),
            GoRoute(
              path: (ImageExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(ImageExample).underscoreCaseName}.dart',
                child: const ImageExample(),
              ),
            ),
            GoRoute(
              path: (OutlinedButtonExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(OutlinedButtonExample).underscoreCaseName}.dart',
                child: const OutlinedButtonExample(),
              ),
            ),
            GoRoute(
              path: (PlaceholderExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(PlaceholderExample).underscoreCaseName}.dart',
                child: const PlaceholderExample(),
              ),
            ),
            GoRoute(
              path: (RowExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(RowExample).underscoreCaseName}.dart',
                child: const RowExample(),
              ),
            ),
            GoRoute(
              path: (ScaffoldExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(ScaffoldExample).underscoreCaseName}.dart',
                child: const ScaffoldExample(),
              ),
            ),
            GoRoute(
              path: (TextButtonExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(TextButtonExample).underscoreCaseName}.dart',
                child: const TextButtonExample(),
              ),
            ),
            GoRoute(
              path: (TextExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/basics/example/${(TextExample).underscoreCaseName}.dart',
                child: const TextExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: (CupertinoComponentsPage).name,
          builder: (_, __) => const CupertinoComponentsPage(),
          routes: [
            GoRoute(
              path: (CupertinoActionSheetExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoActionSheetExample).underscoreCaseName}.dart',
                child: const CupertinoActionSheetExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoActivityIndicatorExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoActivityIndicatorExample).underscoreCaseName}.dart',
                child: const CupertinoActivityIndicatorExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoAlertDialogExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoAlertDialogExample).underscoreCaseName}.dart',
                child: const CupertinoAlertDialogExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoButtonExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoButtonExample).underscoreCaseName}.dart',
                child: const CupertinoButtonExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoContextMenuExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoContextMenuExample).underscoreCaseName}.dart',
                child: const CupertinoContextMenuExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoDatePickerExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoDatePickerExample).underscoreCaseName}.dart',
                child: const CupertinoDatePickerExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoAlertDialogExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoAlertDialogExample).underscoreCaseName}.dart',
                child: const CupertinoAlertDialogExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoFullscreenDialogTransitionExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath:
                    'lib/pages/cupertino/example/${(CupertinoFullscreenDialogTransitionExample).underscoreCaseName}.dart',
                child: const CupertinoFullscreenDialogTransitionExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoListSectionExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoListSectionExample).underscoreCaseName}.dart',
                child: const CupertinoListSectionExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoListTileExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoListTileExample).underscoreCaseName}.dart',
                child: const CupertinoListTileExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoNavigationBarExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoNavigationBarExample).underscoreCaseName}.dart',
                child: const CupertinoNavigationBarExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoPageScaffoldExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoPageScaffoldExample).underscoreCaseName}.dart',
                child: const CupertinoPageScaffoldExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoPageTransitionExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoPageTransitionExample).underscoreCaseName}.dart',
                child: const CupertinoPageTransitionExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoPickerExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoPickerExample).underscoreCaseName}.dart',
                child: const CupertinoPickerExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoPopupSurfaceExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoPopupSurfaceExample).underscoreCaseName}.dart',
                child: const CupertinoPopupSurfaceExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoSearchTextFieldExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoSearchTextFieldExample).underscoreCaseName}.dart',
                child: const CupertinoSearchTextFieldExample(),
              ),
            ),
            GoRoute(
              path: (SegmentedControlExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(SegmentedControlExample).underscoreCaseName}.dart',
                child: const SegmentedControlExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoSliderExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoSliderExample).underscoreCaseName}.dart',
                child: const CupertinoSliderExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoSlidingSegmentedControlExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath:
                    'lib/pages/cupertino/example/${(CupertinoSlidingSegmentedControlExample).underscoreCaseName}.dart',
                child: const CupertinoSlidingSegmentedControlExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoSliverNavigationBarExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath:
                    'lib/pages/cupertino/example/${(CupertinoSliverNavigationBarExample).underscoreCaseName}.dart',
                child: const CupertinoSliverNavigationBarExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoSwitchExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoSwitchExample).underscoreCaseName}.dart',
                child: const CupertinoSwitchExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoTabBarExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoTabBarExample).underscoreCaseName}.dart',
                child: const CupertinoTabBarExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoTabScaffoldExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoTabScaffoldExample).underscoreCaseName}.dart',
                child: const CupertinoTabScaffoldExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoTabViewExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoTabViewExample).underscoreCaseName}.dart',
                child: const CupertinoTabViewExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoTextFieldExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoTextFieldExample).underscoreCaseName}.dart',
                child: const CupertinoTextFieldExample(),
              ),
            ),
            GoRoute(
              path: (CupertinoTimerPickerExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/cupertino/example/${(CupertinoTimerPickerExample).underscoreCaseName}.dart',
                child: const CupertinoTimerPickerExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: (InputPage).name,
          builder: (_, __) => const InputPage(),
          routes: [
            GoRoute(
              path: (AutocompleteBasicExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/input/example/${(AutocompleteBasicExample).underscoreCaseName}.dart',
                child: const AutocompleteBasicExample(),
              ),
            ),
            GoRoute(
              path: (FormExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/input/example/${(FormExample).underscoreCaseName}.dart',
                child: const FormExample(),
              ),
            ),
            GoRoute(
              path: (FormFieldExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/input/example/${(FormFieldExample).underscoreCaseName}.dart',
                child: const FormFieldExample(),
              ),
            ),
            GoRoute(
              path: (KeyboardListenerExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/input/example/${(KeyboardListenerExample).underscoreCaseName}.dart',
                child: const KeyboardListenerExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: (InteractionModelsPage).name,
          builder: (_, __) => const InteractionModelsPage(),
          routes: [
            GoRoute(
              path: (AbsorbPointerExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/interaction_models/example/${(AbsorbPointerExample).underscoreCaseName}.dart',
                child: const AbsorbPointerExample(),
              ),
            ),
            GoRoute(
              path: (DismissibleExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/interaction_models/example/${(DismissibleExample).underscoreCaseName}.dart',
                child: const DismissibleExample(),
              ),
            ),
            GoRoute(
              path: (DragTargetExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/interaction_models/example/${(DragTargetExample).underscoreCaseName}.dart',
                child: const DragTargetExample(),
              ),
            ),
            GoRoute(
              path: (DraggableExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/interaction_models/example/${(DraggableExample).underscoreCaseName}.dart',
                child: const DraggableExample(),
              ),
            ),
            GoRoute(
              path: (DraggableScrollableSheetExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/interaction_models/example/${(DraggableScrollableSheetExample).underscoreCaseName}.dart',
                child: const DraggableScrollableSheetExample(),
              ),
            ),
            GoRoute(
              path: (GestureDetectorExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/interaction_models/example/${(GestureDetectorExample).underscoreCaseName}.dart',
                child: const GestureDetectorExample(),
              ),
            ),
            GoRoute(
              path: (IgnorePointerExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/interaction_models/example/${(IgnorePointerExample).underscoreCaseName}.dart',
                child: const IgnorePointerExample(),
              ),
            ),
            GoRoute(
              path: (InteractiveViewerExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/interaction_models/example/${(InteractiveViewerExample).underscoreCaseName}.dart',
                child: const InteractiveViewerExample(),
              ),
            ),
            GoRoute(
              path: (LongPressDraggableExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/interaction_models/example/${(LongPressDraggableExample).underscoreCaseName}.dart',
                child: const LongPressDraggableExample(),
              ),
            ),
            GoRoute(
              path: (ScrollableExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/interaction/example/${(ScrollableExample).underscoreCaseName}.dart',
                child: const ScrollableExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: (LayoutPage).name,
          builder: (_, __) => const LayoutPage(),
          routes: [
            GoRoute(
              path: (MultiChildLayoutWidgetsPage).name,
              builder: (_, __) => const MultiChildLayoutWidgetsPage(),
              routes: [
                GoRoute(
                  path: (ColumnExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/${(ColumnExample).underscoreCaseName}.dart',
                    child: const ColumnExample(),
                  ),
                ),
                GoRoute(
                  path: (CustomMultiChildLayoutExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/multi_child_layout_widgets/${(CustomMultiChildLayoutExample).underscoreCaseName}.dart',
                    child: const CustomMultiChildLayoutExample(),
                  ),
                ),
                GoRoute(
                  path: (FlowExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/multi_child_layout_widgets/${(FlowExample).underscoreCaseName}.dart',
                    child: const FlowExample(),
                  ),
                ),
                GoRoute(
                  path: (GridViewExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/multi_child_layout_widgets/${(GridViewExample).underscoreCaseName}.dart',
                    child: const GridViewExample(),
                  ),
                ),
                GoRoute(
                  path: (IndexedStackExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/multi_child_layout_widgets/${(IndexedStackExample).underscoreCaseName}.dart',
                    child: const IndexedStackExample(),
                  ),
                ),
                GoRoute(
                  path: (LayoutBuilderExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/multi_child_layout_widgets/${(LayoutBuilderExample).underscoreCaseName}.dart',
                    child: const LayoutBuilderExample(),
                  ),
                ),
                GoRoute(
                  path: (ListViewExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/multi_child_layout_widgets/${(ListViewExample).underscoreCaseName}.dart',
                    child: const ListViewExample(),
                  ),
                ),
                GoRoute(
                  path: (RowExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/${(RowExample).underscoreCaseName}.dart',
                    child: const RowExample(),
                  ),
                ),
                GoRoute(
                  path: (StackExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/multi_child_layout_widgets/${(StackExample).underscoreCaseName}.dart',
                    child: const StackExample(),
                  ),
                ),
                GoRoute(
                  path: (TableExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/multi_child_layout_widgets/${(TableExample).underscoreCaseName}.dart',
                    child: const TableExample(),
                  ),
                ),
                GoRoute(
                  path: (WrapExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/multi_child_layout_widgets/${(WrapExample).underscoreCaseName}.dart',
                    child: const WrapExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: (SingleChildLayoutWidgetsPage).name,
              builder: (_, __) => const SingleChildLayoutWidgetsPage(),
              routes: [
                GoRoute(
                  path: (AlignExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(AlignExample).underscoreCaseName}.dart',
                    child: const AlignExample(),
                  ),
                ),
                GoRoute(
                  path: (AspectRatioExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(AspectRatioExample).underscoreCaseName}.dart',
                    child: const AspectRatioExample(),
                  ),
                ),
                GoRoute(
                  path: (BaselineExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(BaselineExample).underscoreCaseName}.dart',
                    child: const BaselineExample(),
                  ),
                ),
                GoRoute(
                  path: (CenterExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(CenterExample).underscoreCaseName}.dart',
                    child: const CenterExample(),
                  ),
                ),
                GoRoute(
                  path: (ConstrainedBoxExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(ConstrainedBoxExample).underscoreCaseName}.dart',
                    child: const ConstrainedBoxExample(),
                  ),
                ),
                GoRoute(
                  path: (ContainerExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(ContainerExample).underscoreCaseName}.dart',
                    child: const ContainerExample(),
                  ),
                ),
                GoRoute(
                  path: (CustomSingleChildLayoutExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(CustomSingleChildLayoutExample).underscoreCaseName}.dart',
                    child: CustomSingleChildLayoutExample(),
                  ),
                ),
                GoRoute(
                  path: (ExpandedExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(ExpandedExample).underscoreCaseName}.dart',
                    child: const ExpandedExample(),
                  ),
                ),
                GoRoute(
                  path: (FittedBoxExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(FittedBoxExample).underscoreCaseName}.dart',
                    child: const FittedBoxExample(),
                  ),
                ),
                GoRoute(
                  path: (FractionallySizedBoxExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(FractionallySizedBoxExample).underscoreCaseName}.dart',
                    child: const FractionallySizedBoxExample(),
                  ),
                ),
                GoRoute(
                  path: (IntrinsicHeightExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(IntrinsicHeightExample).underscoreCaseName}.dart',
                    child: const IntrinsicHeightExample(),
                  ),
                ),
                GoRoute(
                  path: (IntrinsicWidthExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(IntrinsicWidthExample).underscoreCaseName}.dart',
                    child: const IntrinsicWidthExample(),
                  ),
                ),
                GoRoute(
                  path: (LimitedBoxExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(LimitedBoxExample).underscoreCaseName}.dart',
                    child: const LimitedBoxExample(),
                  ),
                ),
                GoRoute(
                  path: (OverflowBoxExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(OverflowBoxExample).underscoreCaseName}.dart',
                    child: const OverflowBoxExample(),
                  ),
                ),
                GoRoute(
                  path: (PaddingExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(PaddingExample).underscoreCaseName}.dart',
                    child: const PaddingExample(),
                  ),
                ),
                GoRoute(
                  path: (SizedBoxExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(SizedBoxExample).underscoreCaseName}.dart',
                    child: const SizedBoxExample(),
                  ),
                ),
                GoRoute(
                  path: (SizedOverflowBoxExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(SizedOverflowBoxExample).underscoreCaseName}.dart',
                    child: const SizedOverflowBoxExample(),
                  ),
                ),
                GoRoute(
                  path: (TransformExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/single_child_layout_widgets/${(TransformExample).underscoreCaseName}.dart',
                    child: const TransformExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: (SliverWidgetsPage).name,
              builder: (_, __) => const SliverWidgetsPage(),
              routes: [
                GoRoute(
                  path: (CustomScrollViewExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/sliver_widgets/${(CustomScrollViewExample).underscoreCaseName}.dart',
                    child: const CustomScrollViewExample(),
                  ),
                ),
                GoRoute(
                  path: (NestedScrollViewExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/sliver_widgets/${(NestedScrollViewExample).underscoreCaseName}.dart',
                    child: const NestedScrollViewExample(),
                  ),
                ),
                GoRoute(
                  path: (NestedScrollViewExample2).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/layout/example/sliver_widgets/${(NestedScrollViewExample2).underscoreCaseName}.dart',
                    child: const NestedScrollViewExample2(),
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: (MaterialComponentsPage).name,
          builder: (_, __) => const MaterialComponentsPage(),
          routes: [
            GoRoute(
              path: (ActionsPage).name,
              builder: (_, __) => const ActionsPage(),
              routes: [
                GoRoute(
                  path: (CommonButtonsExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/actions/example/${(CommonButtonsExample).underscoreCaseName}.dart',
                    child: const CommonButtonsExample(),
                  ),
                ),
                GoRoute(
                  path: (FABExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/actions/example/${(FABExample).underscoreCaseName}.dart',
                    child: const FABExample(),
                  ),
                ),
                GoRoute(
                  path: (IconButtonExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/actions/example/${(IconButtonExample).underscoreCaseName}.dart',
                    child: const IconButtonExample(),
                  ),
                ),
                GoRoute(
                  path: (SegmentedButtonExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/actions/example/${(SegmentedButtonExample).underscoreCaseName}.dart',
                    child: const SegmentedButtonExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: (CommunicationPage).name,
              builder: (_, __) => const CommunicationPage(),
              routes: [
                GoRoute(
                  path: (BadgeExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/communication/example/${(BadgeExample).underscoreCaseName}.dart',
                    child: const BadgeExample(),
                  ),
                ),
                GoRoute(
                  path: (ProgressIndicatorExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/communication/example/${(ProgressIndicatorExample).underscoreCaseName}.dart',
                    child: const ProgressIndicatorExample(),
                  ),
                ),
                GoRoute(
                  path: (SnackBarExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/communication/example/${(SnackBarExample).underscoreCaseName}.dart',
                    child: const SnackBarExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: (ContainmentPage).name,
              builder: (_, __) => const ContainmentPage(),
              routes: [
                GoRoute(
                  path: (BottomSheetExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/containment/example/${(BottomSheetExample).underscoreCaseName}.dart',
                    child: const BottomSheetExample(),
                  ),
                ),
                GoRoute(
                  path: (CardExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/containment/example/${(CardExample).underscoreCaseName}.dart',
                    child: const CardExample(),
                  ),
                ),
                GoRoute(
                  path: (DialogExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/containment/example/${(DialogExample).underscoreCaseName}.dart',
                    child: const DialogExample(),
                  ),
                ),
                GoRoute(
                  path: (DividerExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/containment/example/${(DividerExample).underscoreCaseName}.dart',
                    child: const DividerExample(),
                  ),
                ),
                GoRoute(
                  path: (ListTileExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/containment/example/${(ListTileExample).underscoreCaseName}.dart',
                    child: const ListTileExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: (NavigationPage).name,
              builder: (_, __) => const NavigationPage(),
              routes: [
                GoRoute(
                  path: (material_app_bar.AppBarExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/basics/example/${(material_app_bar.AppBarExample).underscoreCaseName}.dart',
                    child: const material_app_bar.AppBarExample(),
                  ),
                ),
                GoRoute(
                  path: (BottomAppBarExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/navigation/example/${(BottomAppBarExample).underscoreCaseName}.dart',
                    child: const BottomAppBarExample(),
                  ),
                ),
                GoRoute(
                  path: (NavigationBarExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/navigation/example/${(NavigationBarExample).underscoreCaseName}.dart',
                    child: const NavigationBarExample(),
                  ),
                ),
                GoRoute(
                  path: (NavigationDrawerExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/navigation/example/${(NavigationDrawerExample).underscoreCaseName}.dart',
                    child: const NavigationDrawerExample(),
                  ),
                ),
                GoRoute(
                  path: (NavigationRailExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/navigation/example/${(NavigationRailExample).underscoreCaseName}.dart',
                    child: const NavigationRailExample(),
                  ),
                ),
                GoRoute(
                  path: (TabBarExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/navigation/example/${(TabBarExample).underscoreCaseName}.dart',
                    child: const TabBarExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: (SelectionPage).name,
              builder: (_, __) => const SelectionPage(),
              routes: [
                GoRoute(
                  path: (CheckboxExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/selection/example/${(CheckboxExample).underscoreCaseName}.dart',
                    child: const CheckboxExample(),
                  ),
                ),
                GoRoute(
                  path: (ChipExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/selection/example/${(ChipExample).underscoreCaseName}.dart',
                    child: const ChipExample(),
                  ),
                ),
                GoRoute(
                  path: (DatePickerExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/selection/example/${(DatePickerExample).underscoreCaseName}.dart',
                    child: const DatePickerExample(),
                  ),
                ),
                GoRoute(
                  path: (PopupMenuExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/selection/example/${(PopupMenuExample).underscoreCaseName}.dart',
                    child: const PopupMenuExample(),
                  ),
                ),
                GoRoute(
                  path: (RadioButtonExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/selection/example/${(RadioButtonExample).underscoreCaseName}.dart',
                    child: const RadioButtonExample(),
                  ),
                ),
                GoRoute(
                  path: (SliderExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/selection/example/${(SliderExample).underscoreCaseName}.dart',
                    child: const SliderExample(),
                  ),
                ),
                GoRoute(
                  path: (SwitchExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/selection/example/${(SwitchExample).underscoreCaseName}.dart',
                    child: const SwitchExample(),
                  ),
                ),
                GoRoute(
                  path: (TimePickerExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/selection/example/${(TimePickerExample).underscoreCaseName}.dart',
                    child: const TimePickerExample(),
                  ),
                ),
              ],
            ),
            GoRoute(
              path: (TextInpusPage).name,
              builder: (_, __) => const TextInpusPage(),
              routes: [
                GoRoute(
                  path: (TextFieldExample).name,
                  builder: (_, __) => CustomWidgetCodeView(
                    filePath: 'lib/pages/material/textInputs/example/${(TextFieldExample).underscoreCaseName}.dart',
                    child: const TextFieldExample(),
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: (OthersPage).name,
          builder: (_, __) => const OthersPage(),
          routes: const [],
        ),
        GoRoute(
          path: (PaintingAndEffectsPage).name,
          builder: (_, __) => const PaintingAndEffectsPage(),
          routes: [
            GoRoute(
              path: (BackdropFilterExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/painting_and_effects/example/${(BackdropFilterExample).underscoreCaseName}.dart',
                child: const BackdropFilterExample(),
              ),
            ),
            GoRoute(
              path: (ClipOvalExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/painting_and_effects/example/${(ClipOvalExample).underscoreCaseName}.dart',
                child: const ClipOvalExample(),
              ),
            ),
            GoRoute(
              path: (ClipPathExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/painting_and_effects/example/${(ClipPathExample).underscoreCaseName}.dart',
                child: const ClipPathExample(),
              ),
            ),
            GoRoute(
              path: (ClipRRectExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/painting_and_effects/example/${(ClipRRectExample).underscoreCaseName}.dart',
                child: const ClipRRectExample(),
              ),
            ),
            GoRoute(
              path: (ClipRectExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/painting_and_effects/example/${(ClipRectExample).underscoreCaseName}.dart',
                child: const ClipRectExample(),
              ),
            ),
            GoRoute(
              path: (ColorFilteredExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/painting_and_effects/example/${(ColorFilteredExample).underscoreCaseName}.dart',
                child: const ColorFilteredExample(),
              ),
            ),
            GoRoute(
              path: (CustomPaintExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/painting_and_effects/example/${(CustomPaintExample).underscoreCaseName}.dart',
                child: const CustomPaintExample(),
              ),
            ),
            GoRoute(
              path: (DecoratedBoxExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/painting_and_effects/example/${(DecoratedBoxExample).underscoreCaseName}.dart',
                child: const DecoratedBoxExample(),
              ),
            ),
            GoRoute(
              path: (FractionalTranslationExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/painting_and_effects/example/${(FractionalTranslationExample).underscoreCaseName}.dart',
                child: const FractionalTranslationExample(),
              ),
            ),
            GoRoute(
              path: (OpacityExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/painting_and_effects/example/${(OpacityExample).underscoreCaseName}.dart',
                child: const OpacityExample(),
              ),
            ),
            GoRoute(
              path: (RotatedBoxExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/painting_and_effects/example/${(RotatedBoxExample).underscoreCaseName}.dart',
                child: const RotatedBoxExample(),
              ),
            ),
            GoRoute(
              path: (TransformExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/painting_and_effects/example/${(TransformExample).underscoreCaseName}.dart',
                child: const TransformExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: (ScrollingPage).name,
          builder: (_, __) => const ScrollingPage(),
          routes: [
            GoRoute(
              path: (scrolling.CustomScrollViewExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(scrolling.CustomScrollViewExample).underscoreCaseName}.dart',
                child: const scrolling.CustomScrollViewExample(),
              ),
            ),
            GoRoute(
              path: (scrolling.DraggableScrollableSheetExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(scrolling.DraggableScrollableSheetExample).underscoreCaseName}.dart',
                child: const scrolling.DraggableScrollableSheetExample(),
              ),
            ),
            GoRoute(
              path: (scrolling.GridViewExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(scrolling.GridViewExample).underscoreCaseName}.dart',
                child: const scrolling.GridViewExample(),
              ),
            ),
            GoRoute(
              path: (scrolling.ListViewExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(scrolling.ListViewExample).underscoreCaseName}.dart',
                child: const scrolling.ListViewExample(),
              ),
            ),
            GoRoute(
              path: (scrolling.NestedScrollViewExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(scrolling.NestedScrollViewExample).underscoreCaseName}.dart',
                child: const scrolling.NestedScrollViewExample(),
              ),
            ),
            GoRoute(
              path: (NotificationListenerExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(NotificationListenerExample).underscoreCaseName}.dart',
                child: const NotificationListenerExample(),
              ),
            ),
            GoRoute(
              path: (PageViewExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(PageViewExample).underscoreCaseName}.dart',
                child: const PageViewExample(),
              ),
            ),
            GoRoute(
              path: (RefreshIndicatorExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(RefreshIndicatorExample).underscoreCaseName}.dart',
                child: const RefreshIndicatorExample(),
              ),
            ),
            GoRoute(
              path: (ReorderableExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(ReorderableExample).underscoreCaseName}.dart',
                child: const ReorderableExample(),
              ),
            ),
            GoRoute(
              path: (ScrollConfigurationExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(ScrollConfigurationExample).underscoreCaseName}.dart',
                child: const ScrollConfigurationExample(),
              ),
            ),
            GoRoute(
              path: (scrolling.ScrollableExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(scrolling.ScrollableExample).underscoreCaseName}.dart',
                child: const scrolling.ScrollableExample(),
              ),
            ),
            GoRoute(
              path: (ScrollbarExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(ScrollbarExample).underscoreCaseName}.dart',
                child: const ScrollbarExample(),
              ),
            ),
            GoRoute(
              path: (SingleChildScrollViewExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/scrolling/example/${(SingleChildScrollViewExample).underscoreCaseName}.dart',
                child: const SingleChildScrollViewExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: (StylingPage).name,
          builder: (_, __) => const StylingPage(),
          routes: [
            GoRoute(
              path: (MediaQueryExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/styling/example/${(MediaQueryExample).underscoreCaseName}.dart',
                child: const MediaQueryExample(),
              ),
            ),
            GoRoute(
              path: (PaddingExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/styling/example/${(PaddingExample).underscoreCaseName}.dart',
                child: const PaddingExample(),
              ),
            ),
            GoRoute(
              path: (ThemeExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/styling/example/${(ThemeExample).underscoreCaseName}.dart',
                child: const ThemeExample(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: (TextPage).name,
          builder: (_, __) => const TextPage(),
          routes: [
            GoRoute(
              path: (DefaultTextStyleExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/text/example/${(DefaultTextStyleExample).underscoreCaseName}.dart',
                child: const DefaultTextStyleExample(),
              ),
            ),
            GoRoute(
              path: (RichTextExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/text/example/${(RichTextExample).underscoreCaseName}.dart',
                child: const RichTextExample(),
              ),
            ),
            GoRoute(
              path: (TextExample).name,
              builder: (_, __) => CustomWidgetCodeView(
                filePath: 'lib/pages/text/example/${(TextExample).underscoreCaseName}.dart',
                child: const TextExample(),
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
              context.push('/${(AccessibilityPage).name}');
            },
          ),
          MyCardWidget(
            title: '애니메이션',
            onTap: () {
              context.push('/${(AnimationAndMotionPage).name}');
            },
          ),
          MyCardWidget(
            title: '자산',
            onTap: () {
              context.push('/${(AssetsImagesAndIconsPage).name}');
            },
          ),
          MyCardWidget(
            title: '비동기',
            onTap: () {
              context.push('/${(AsyncPage).name}');
            },
          ),
          MyCardWidget(
            title: '기초',
            onTap: () {
              context.push('/${(BasicsPage).name}');
            },
          ),
          MyCardWidget(
            title: '머티리얼',
            onTap: () {
              context.push('/${(MaterialComponentsPage).name}');
            },
          ),
          MyCardWidget(
            title: '쿠퍼티노',
            onTap: () {
              context.push('/${(CupertinoComponentsPage).name}');
            },
          ),
          MyCardWidget(
            title: '입력',
            onTap: () {
              context.push('/${(InputPage).name}');
            },
          ),
          MyCardWidget(
            title: '상호작용',
            onTap: () {
              context.push('/${(InteractionModelsPage).name}');
            },
          ),
          MyCardWidget(
            title: '레이아웃 구성',
            onTap: () {
              context.push('/${(LayoutPage).name}');
            },
          ),
          MyCardWidget(
            title: '그리기',
            onTap: () {
              context.push('/${(PaintingAndEffectsPage).name}');
            },
          ),
          MyCardWidget(
            title: '스크롤',
            onTap: () {
              context.push('/${(ScrollingPage).name}');
            },
          ),
          MyCardWidget(
            title: '스타일링',
            onTap: () {
              context.push('/${(StylingPage).name}');
            },
          ),
          MyCardWidget(
            title: '텍스트',
            onTap: () {
              context.push('/${(TextPage).name}');
            },
          ),
          MyCardWidget(
            title: '기타',
            onTap: () {
              context.push('/${(OthersPage).name}');
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
