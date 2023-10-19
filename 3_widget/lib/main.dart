import 'package:flutter/material.dart';
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
import 'package:flutter_widget/pages/material/actions/actions_example.dart';
import 'package:flutter_widget/pages/material/actions/example/common_buttons_example.dart';
import 'package:flutter_widget/pages/material/actions/example/fab_example.dart';
import 'package:flutter_widget/pages/material/actions/example/icon_button_example.dart';
import 'package:flutter_widget/pages/material/actions/example/segmented_button_example.dart';
import 'package:flutter_widget/pages/material/communication/communication_example.dart';
import 'package:flutter_widget/pages/material/communication/example/badge_example.dart';
import 'package:flutter_widget/pages/material/communication/example/progress_indicator_example.dart';
import 'package:flutter_widget/pages/material/communication/example/snackbar_example.dart';
import 'package:flutter_widget/pages/material/containment/containment_example.dart';
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
import 'package:flutter_widget/pages/material/navigation/navigation_example.dart';
import 'package:flutter_widget/pages/material/selection/example/checkbox_example.dart';
import 'package:flutter_widget/pages/material/selection/example/chip_example.dart';
import 'package:flutter_widget/pages/material/selection/example/date_picker_example.dart';
import 'package:flutter_widget/pages/material/selection/example/popup_menu_example.dart';
import 'package:flutter_widget/pages/material/selection/example/radio_button_example.dart';
import 'package:flutter_widget/pages/material/selection/example/slider_example.dart';
import 'package:flutter_widget/pages/material/selection/example/switch_example.dart';
import 'package:flutter_widget/pages/material/selection/example/time_picker_example.dart';
import 'package:flutter_widget/pages/material/selection/selection_example.dart';
import 'package:flutter_widget/pages/material/textInputs/example/text_field_example.dart';
import 'package:flutter_widget/pages/material/textInputs/text_inputs_example.dart';
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

/// 참조 링크 : https://docs.flutter.dev/ui/widgets
void main() => runApp(
      MaterialApp.router(
        scrollBehavior: EffectlessScrollBehavior(),
        routerConfig: router,
        theme: ThemeData(useMaterial3: true),
      ),
    );

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
              builder: (_, __) => const ExcludeSemanticsExample(),
            ),
            GoRoute(
              path: 'MergeSemanticsExample',
              builder: (_, __) => const MergeSemanticsExample(),
            ),
            GoRoute(
              path: 'SemanticsExample',
              builder: (_, __) => const SemanticsExample(),
            ),
          ],
        ),
        GoRoute(
          path: 'animation',
          builder: (_, __) => const AnimationAndMotionPage(),
          routes: [
            GoRoute(
              path: 'AnimatedAlignExample',
              builder: (_, __) => const AnimatedAlignExample(),
            ),
            GoRoute(
              path: 'AnimatedBuilderExample',
              builder: (_, __) => const AnimatedBuilderExample(),
            ),
            GoRoute(
              path: 'AnimatedContainerExample',
              builder: (_, __) => const AnimatedContainerExample(),
            ),
            GoRoute(
              path: 'AnimatedCrossFadeExample',
              builder: (_, __) => const AnimatedCrossFadeExample(),
            ),
            GoRoute(
              path: 'AnimatedDefaultTextStyleExample',
              builder: (_, __) => const AnimatedDefaultTextStyleExample(),
            ),
            GoRoute(
              path: 'AnimatedListExample',
              builder: (_, __) => const AnimatedListExample(),
            ),
            GoRoute(
              path: 'AnimatedListStateExample',
              builder: (_, __) => const AnimatedListStateExample(),
            ),
            GoRoute(
              path: 'AnimatedModalBarrierExample',
              builder: (_, __) => const AnimatedModalBarrierExample(),
            ),
            GoRoute(
              path: 'AnimatedOpacityExample',
              builder: (_, __) => const AnimatedOpacityExample(),
            ),
            GoRoute(
              path: 'AnimatedPhysicalModelExample',
              builder: (_, __) => const AnimatedPhysicalModelExample(),
            ),
            GoRoute(
              path: 'AnimatedPositionedExample',
              builder: (_, __) => const AnimatedPositionedExample(),
            ),
            GoRoute(
              path: 'AnimatedSizeExample',
              builder: (_, __) => const AnimatedSizeExample(),
            ),
            GoRoute(
              path: 'AnimatedWidgetExample',
              builder: (_, __) => const AnimatedWidgetExample(),
            ),
            GoRoute(
              path: 'DecoratedBoxTransitionExample',
              builder: (_, __) => const DecoratedBoxTransitionExample(),
            ),
            GoRoute(
              path: 'FadeTransitionExample',
              builder: (_, __) => const FadeTransitionExample(),
            ),
            GoRoute(
              path: 'HeroExample',
              builder: (_, __) => const HeroExample(),
            ),
            GoRoute(
              path: 'ImplicitlyAnimatedWidgetExample',
              builder: (_, __) => const ImplicitlyAnimatedWidgetExample(),
            ),
            GoRoute(
              path: 'PositionedTransitionExample',
              builder: (_, __) => const PositionedTransitionExample(),
            ),
            GoRoute(
              path: 'RotationTransitionExample',
              builder: (_, __) => const RotationTransitionExample(),
            ),
            GoRoute(
              path: 'ScaleTransitionExample',
              builder: (_, __) => const ScaleTransitionExample(),
            ),
            GoRoute(
              path: 'SizeTransitionExample',
              builder: (_, __) => const SizeTransitionExample(),
            ),
            GoRoute(
              path: 'SlideTransitionExample',
              builder: (_, __) => const SlideTransitionExample(),
            ),
          ],
        ),
        GoRoute(
          path: 'assets',
          builder: (_, __) => const AssetsImagesAndIconsPage(),
          routes: [
            GoRoute(
              path: 'AssetBundleExample',
              builder: (_, __) => const AssetBundleExample(),
            ),
            GoRoute(
              path: 'IconExample',
              builder: (_, __) => const IconExample(),
            ),
            GoRoute(
              path: 'ImageExample',
              builder: (_, __) => const ImageExample(),
            ),
            GoRoute(
              path: 'RawImageExample',
              builder: (_, __) => const RawImageExample(),
            ),
          ],
        ),
        GoRoute(
          path: 'async',
          builder: (_, __) => const AsyncPage(),
          routes: [
            GoRoute(
              path: 'FutureBuilderExample',
              builder: (_, __) => const FutureBuilderExample(),
            ),
            GoRoute(
              path: 'StreamBuilderExample',
              builder: (_, __) => const StreamBuilderExample(),
            ),
          ],
        ),
        GoRoute(
          path: 'basics',
          builder: (_, __) => const BasicsPage(),
          routes: [
            GoRoute(
              path: 'AppBarExample',
              builder: (_, __) => const AppBarExample(),
            ),
            GoRoute(
              path: 'ColumnExample',
              builder: (_, __) => const ColumnExample(),
            ),
            GoRoute(
              path: 'ContainerExample',
              builder: (_, __) => const ContainerExample(),
            ),
            GoRoute(
              path: 'ElevatedButtonExample',
              builder: (_, __) => const ElevatedButtonExample(),
            ),
            GoRoute(
              path: 'FlutterLogoExample',
              builder: (_, __) => const FlutterLogoExample(),
            ),
            GoRoute(
              path: 'IconExample',
              builder: (_, __) => const IconExample(),
            ),
            GoRoute(
              path: 'ImageExample',
              builder: (_, __) => const ImageExample(),
            ),
            GoRoute(
              path: 'OutlinedButtonExample',
              builder: (_, __) => const OutlinedButtonExample(),
            ),
            GoRoute(
              path: 'PlaceholderExample',
              builder: (_, __) => const PlaceholderExample(),
            ),
            GoRoute(
              path: 'RowExample',
              builder: (_, __) => const RowExample(),
            ),
            GoRoute(
              path: 'ScaffoldExample',
              builder: (_, __) => const ScaffoldExample(),
            ),
            GoRoute(
              path: 'TextButtonExample',
              builder: (_, __) => const TextButtonExample(),
            ),
            GoRoute(
              path: 'TextExample',
              builder: (_, __) => const TextExample(),
            ),
          ],
        ),
        GoRoute(
          path: 'cupertino',
          builder: (_, __) => const CupertinoComponentsPage(),
        ),
        GoRoute(
          path: 'input',
          builder: (_, __) => const InputPage(),
          routes: [
            GoRoute(
              path: 'AutocompleteBasicExample',
              builder: (_, __) => const AutocompleteBasicExample(),
            ),
            GoRoute(
              path: 'FormExample',
              builder: (_, __) => const FormExample(),
            ),
            GoRoute(
              path: 'FormFieldExample',
              builder: (_, __) => const FormFieldExample(),
            ),
            GoRoute(
              path: 'KeyboardListenerExample',
              builder: (_, __) => const KeyboardListenerExample(),
            ),
          ],
        ),
        GoRoute(
          path: 'interaction',
          builder: (_, __) => const InteractionModelsPage(),
          routes: [
            GoRoute(
              path: 'AbsorbPointerExample',
              builder: (_, __) => const AbsorbPointerExample(),
            ),
            GoRoute(
              path: 'DismissibleExample',
              builder: (_, __) => const DismissibleExample(),
            ),
            GoRoute(
              path: 'DragTargetExample',
              builder: (_, __) => const DragTargetExample(),
            ),
            GoRoute(
              path: 'DraggableExample',
              builder: (_, __) => const DraggableExample(),
            ),
            GoRoute(
              path: 'DraggableScrollableSheetExample',
              builder: (_, __) => const DraggableScrollableSheetExample(),
            ),
            GoRoute(
              path: 'GestureDetectorExample',
              builder: (_, __) => const GestureDetectorExample(),
            ),
            GoRoute(
              path: 'IgnorePointerExample',
              builder: (_, __) => const IgnorePointerExample(),
            ),
            GoRoute(
              path: 'InteractiveViewerExample',
              builder: (_, __) => const InteractiveViewerExample(),
            ),
            GoRoute(
              path: 'LongPressDraggableExample',
              builder: (_, __) => const LongPressDraggableExample(),
            ),
            GoRoute(
              path: 'ScrollableExample',
              builder: (_, __) => const ScrollableExample(),
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
                  builder: (_, __) => const ColumnExample(),
                ),
                GoRoute(
                  path: 'CustomMultiChildLayoutExample',
                  builder: (_, __) => const CustomMultiChildLayoutExample(),
                ),
                GoRoute(
                  path: 'FlowExample',
                  builder: (_, __) => const FlowExample(),
                ),
                GoRoute(
                  path: 'GridViewExample',
                  builder: (_, __) => const GridViewExample(),
                ),
                GoRoute(
                  path: 'IndexedStackExample',
                  builder: (_, __) => const IndexedStackExample(),
                ),
                GoRoute(
                  path: 'LayoutBuilderExample',
                  builder: (_, __) => const LayoutBuilderExample(),
                ),
                GoRoute(
                  path: 'ListViewExample',
                  builder: (_, __) => const ListViewExample(),
                ),
                GoRoute(
                  path: 'RowExample',
                  builder: (_, __) => const RowExample(),
                ),
                GoRoute(
                  path: 'StackExample',
                  builder: (_, __) => const StackExample(),
                ),
                GoRoute(
                  path: 'TableExample',
                  builder: (_, __) => const TableExample(),
                ),
                GoRoute(
                  path: 'WrapExample',
                  builder: (_, __) => const WrapExample(),
                ),
              ],
            ),
            GoRoute(
              path: 'SingleChildLayoutWidgets',
              builder: (_, __) => const SingleChildLayoutWidgets(),
              routes: [
                GoRoute(
                  path: 'AlignExample',
                  builder: (_, __) => const AlignExample(),
                ),
                GoRoute(
                  path: 'AspectRatioExample',
                  builder: (_, __) => const AspectRatioExample(),
                ),
                GoRoute(
                  path: 'BaselineExample',
                  builder: (_, __) => const BaselineExample(),
                ),
                GoRoute(
                  path: 'CenterExample',
                  builder: (_, __) => const CenterExample(),
                ),
                GoRoute(
                  path: 'ConstrainedBoxExample',
                  builder: (_, __) => const ConstrainedBoxExample(),
                ),
                GoRoute(
                  path: 'ContainerExample',
                  builder: (_, __) => const ContainerExample(),
                ),
                GoRoute(
                  path: 'CustomSingleChildLayoutExample',
                  builder: (_, __) => CustomSingleChildLayoutExample(),
                ),
                GoRoute(
                  path: 'ExpandedExample',
                  builder: (_, __) => const ExpandedExample(),
                ),
                GoRoute(
                  path: 'FittedBoxExample',
                  builder: (_, __) => const FittedBoxExample(),
                ),
                GoRoute(
                  path: 'FractionallySizedBoxExample',
                  builder: (_, __) => const FractionallySizedBoxExample(),
                ),
                GoRoute(
                  path: 'IntrinsicHeightExample',
                  builder: (_, __) => const IntrinsicHeightExample(),
                ),
                GoRoute(
                  path: 'IntrinsicWidthExample',
                  builder: (_, __) => const IntrinsicWidthExample(),
                ),
                GoRoute(
                  path: 'LimitedBoxExample',
                  builder: (_, __) => const LimitedBoxExample(),
                ),
                GoRoute(
                  path: 'OverflowBoxExample',
                  builder: (_, __) => const OverflowBoxExample(),
                ),
                GoRoute(
                  path: 'PaddingExample',
                  builder: (_, __) => const PaddingExample(),
                ),
                GoRoute(
                  path: 'SizedBoxExample',
                  builder: (_, __) => const SizedBoxExample(),
                ),
                GoRoute(
                  path: 'SizedOverflowBoxExample',
                  builder: (_, __) => const SizedOverflowBoxExample(),
                ),
                GoRoute(
                  path: 'TransformExample',
                  builder: (_, __) => const TransformExample(),
                ),
              ],
            ),
            GoRoute(
              path: 'SliverWidgets',
              builder: (_, __) => const SliverWidgets(),
              routes: [
                GoRoute(
                  path: 'CustomScrollViewExample',
                  builder: (_, __) => const CustomScrollViewExample(),
                ),
                GoRoute(
                  path: 'NestedScrollViewExample',
                  builder: (_, __) => const NestedScrollViewExample(),
                ),
                GoRoute(
                  path: 'NestedScrollViewExample2',
                  builder: (_, __) => const NestedScrollViewExample2(),
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
              builder: (_, __) => const ActionsExample(),
              routes: [
                GoRoute(
                  path: 'CommonButtonsExample',
                  builder: (_, __) => const CommonButtonsExample(),
                ),
                GoRoute(
                  path: 'FABExample',
                  builder: (_, __) => const FABExample(),
                ),
                GoRoute(
                  path: 'IconButtonExample',
                  builder: (_, __) => const IconButtonExample(),
                ),
                GoRoute(
                  path: 'SegmentedButtonExample',
                  builder: (_, __) => const SegmentedButtonExample(),
                ),
              ],
            ),
            GoRoute(
              path: 'CommunicationExample',
              builder: (_, __) => const CommunicationExample(),
              routes: [
                GoRoute(
                  path: 'BadgeExample',
                  builder: (_, __) => const BadgeExample(),
                ),
                GoRoute(
                  path: 'ProgressIndicatorExample',
                  builder: (_, __) => const ProgressIndicatorExample(),
                ),
                GoRoute(
                  path: 'SnackBarExample',
                  builder: (_, __) => const SnackBarExample(),
                ),
              ],
            ),
            GoRoute(
              path: 'ContainmentExample',
              builder: (_, __) => const ContainmentExample(),
              routes: [
                GoRoute(
                  path: 'BottomSheetExampleApp',
                  builder: (_, __) => const BottomSheetExampleApp(),
                ),
                GoRoute(
                  path: 'CardExample',
                  builder: (_, __) => const CardExample(),
                ),
                GoRoute(
                  path: 'DialogExample',
                  builder: (_, __) => const DialogExample(),
                ),
                GoRoute(
                  path: 'DividerExample',
                  builder: (_, __) => const DividerExample(),
                ),
                GoRoute(
                  path: 'ListTileExample',
                  builder: (_, __) => const ListTileExample(),
                ),
              ],
            ),
            GoRoute(
              path: 'NavigationExample',
              builder: (_, __) => const NavigationExample(),
              routes: [
                GoRoute(
                  path: 'AppBarExample',
                  builder: (_, __) => const AppBarExample(),
                ),
                GoRoute(
                  path: 'BottomAppBarExample',
                  builder: (_, __) => const BottomAppBarExample(),
                ),
                GoRoute(
                  path: 'NavigationBarExample',
                  builder: (_, __) => const NavigationBarExample(),
                ),
                GoRoute(
                  path: 'NavigationDrawerExample',
                  builder: (_, __) => const NavigationDrawerExample(),
                ),
                GoRoute(
                  path: 'NavigationRailExample',
                  builder: (_, __) => const NavigationRailExample(),
                ),
                GoRoute(
                  path: 'TabBarExample',
                  builder: (_, __) => const TabBarExample(),
                ),
              ],
            ),
            GoRoute(
              path: 'SelectionExample',
              builder: (_, __) => const SelectionExample(),
              routes: [
                GoRoute(
                  path: 'CheckboxExample',
                  builder: (_, __) => const CheckboxExample(),
                ),
                GoRoute(
                  path: 'ChipExample',
                  builder: (_, __) => const ChipExample(),
                ),
                GoRoute(
                  path: 'DatePickerExample',
                  builder: (_, __) => const DatePickerExample(),
                ),
                GoRoute(
                  path: 'PopupMenuExample',
                  builder: (_, __) => const PopupMenuExample(),
                ),
                GoRoute(
                  path: 'RadioExample',
                  builder: (_, __) => const RadioExample(),
                ),
                GoRoute(
                  path: 'SliderExample',
                  builder: (_, __) => const SliderExample(),
                ),
                GoRoute(
                  path: 'SwitchExample',
                  builder: (_, __) => const SwitchExample(),
                ),
                GoRoute(
                  path: 'TimePickerExample',
                  builder: (_, __) => const TimePickerExample(),
                ),
              ],
            ),
            GoRoute(
              path: 'TextInpusExample',
              builder: (_, __) => const TextInpusExample(),
              routes: [
                GoRoute(
                  path: 'TextFieldExample',
                  builder: (_, __) => const TextFieldExample(),
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
              builder: (_, __) => const BackdropFilterExample(),
            ),
            GoRoute(
              path: 'ClipOvalExample',
              builder: (_, __) => const ClipOvalExample(),
            ),
            GoRoute(
              path: 'ClipPathExample',
              builder: (_, __) => const ClipPathExample(),
            ),
            GoRoute(
              path: 'ClipRRectExample',
              builder: (_, __) => const ClipRRectExample(),
            ),
            GoRoute(
              path: 'ClipRectExample',
              builder: (_, __) => const ClipRectExample(),
            ),
            GoRoute(
              path: 'ColorFilteredExample',
              builder: (_, __) => const ColorFilteredExample(),
            ),
            GoRoute(
              path: 'CustomPaintExample',
              builder: (_, __) => const CustomPaintExample(),
            ),
            GoRoute(
              path: 'DecoratedBoxExample',
              builder: (_, __) => const DecoratedBoxExample(),
            ),
            GoRoute(
              path: 'FractionalTranslationExample',
              builder: (_, __) => const FractionalTranslationExample(),
            ),
            GoRoute(
              path: 'OpacityExample',
              builder: (_, __) => const OpacityExample(),
            ),
            GoRoute(
              path: 'RotatedBoxExample',
              builder: (_, __) => const RotatedBoxExample(),
            ),
            GoRoute(
              path: 'TransformExample',
              builder: (_, __) => const TransformExample(),
            ),
          ],
        ),
        GoRoute(
          path: 'scrolling',
          builder: (_, __) => const ScrollingPage(),
          routes: [
            GoRoute(
              path: 'CustomScrollViewExample',
              builder: (_, __) => const CustomScrollViewExample(),
            ),
            GoRoute(
              path: 'DraggableScrollableSheetExample',
              builder: (_, __) => const DraggableScrollableSheetExample(),
            ),
            GoRoute(
              path: 'GridViewExample',
              builder: (_, __) => const GridViewExample(),
            ),
            GoRoute(
              path: 'ListViewExample',
              builder: (_, __) => const ListViewExample(),
            ),
            GoRoute(
              path: 'NestedScrollViewExample',
              builder: (_, __) => const NestedScrollViewExample(),
            ),
            GoRoute(
              path: 'NotificationListenerExample',
              builder: (_, __) => const NotificationListenerExample(),
            ),
            GoRoute(
              path: 'PageViewExample',
              builder: (_, __) => const PageViewExample(),
            ),
            GoRoute(
              path: 'RefreshIndicatorExample',
              builder: (_, __) => const RefreshIndicatorExample(),
            ),
            GoRoute(
              path: 'ReorderableExample',
              builder: (_, __) => const ReorderableExample(),
            ),
            GoRoute(
              path: 'ScrollConfigurationExample',
              builder: (_, __) => const ScrollConfigurationExample(),
            ),
            GoRoute(
              path: 'ScrollableExample',
              builder: (_, __) => const ScrollableExample(),
            ),
            GoRoute(
              path: 'ScrollbarExample',
              builder: (_, __) => const ScrollbarExample(),
            ),
            GoRoute(
              path: 'SingleChildScrollViewExample',
              builder: (_, __) => const SingleChildScrollViewExample(),
            ),
          ],
        ),
        GoRoute(
          path: 'styling',
          builder: (_, __) => const StylingPage(),
          routes: [
            GoRoute(
              path: 'MediaQueryExample',
              builder: (_, __) => const MediaQueryExample(),
            ),
            GoRoute(
              path: 'PaddingExample',
              builder: (_, __) => const PaddingExample(),
            ),
            GoRoute(
              path: 'ThemeExample',
              builder: (_, __) => const ThemeExample(),
            ),
          ],
        ),
        GoRoute(
          path: 'text',
          builder: (_, __) => const TextPage(),
          routes: [
            GoRoute(
              path: 'DefaultTextStyleExample',
              builder: (_, __) => const DefaultTextStyleExample(),
            ),
            GoRoute(
              path: 'RichTextExample',
              builder: (_, __) => const RichTextExample(),
            ),
            GoRoute(
              path: 'TextExample',
              builder: (_, __) => const TextExample(),
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
