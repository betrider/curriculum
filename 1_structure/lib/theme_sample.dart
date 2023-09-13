import 'package:flutter/material.dart';

ThemeData customThemeData() {
  return ThemeData(
    
    // 일반 구성 -> ----------------------------------- ↓ ↓

    /// 표면 색상에 오버레이 색상을 적용하여 어두운 테마에서 표고 수준을 나타냅니다.
    applyElevationOverlayColor: null,
    /// Material ThemeData 적응에서 재정의할 CupertinoThemeData 의 구성 요소
    cupertinoOverrideTheme: null,
    /// 이 테마에 대한 임의 추가.
    extensions: null,
    /// InputDecorator 의 기본 모양을 정의합니다 .
    inputDecorationTheme: null,
    /// 특정 Material 위젯의 탭 대상 및 레이아웃 크기를 구성합니다.
    materialTapTargetSize: null,
    /// 다양한 TargetPlatform 에 대해 MaterialPageRoute 에서 사용하는 페이지 전환 애니메이션을 정의합니다 .
    pageTransitionsTheme: null,
    /// 머티리얼 위젯이 대상에 적응해야 하는 플랫폼입니다.
    platform: null,
    /// 하위 Scrollbar 위젯 의 기본 속성 값을 정의합니다 .
    scrollbarTheme: null,
    /// InkWell 및 InkResponse 에 의해 생성되는 잉크 얼룩의 모양을 정의합니다 .
    splashFactory: null,
    /// Material 3 기능을 선택하는 데 사용되는 임시 플래그입니다.
    useMaterial3: null,
    /// 다양한 UI 구성 요소의 압축을 지정하기 위한 밀도 값입니다.
    visualDensity: null,


    // 색상 -> ----------------------------------- ↓ ↓

    /// 전반적인 테마 밝기입니다.
    brightness: null,
    /// MaterialType.canvas Material 의 기본 색상입니다 .
    canvasColor: null,
    /// 카드로 사용될 때 재료의 색상입니다 .
    cardColor: null,
    /// 대부분의 구성 요소의 색상 속성을 구성하는 데 사용할 수 있는 재료 사양을 기반으로 하는 30가지 색상 세트입니다 .
    colorScheme: null,
    /// color scheme를 구성하는데 사용되는 시작점입니다.
    colorSchemeSeed: null,
    /// Dialog 요소 의 배경색입니다 .
    dialogBackgroundColor: null,
    /// 상태에 관계없이 작동하지 않는 위젯에 사용되는 색상입니다.
    disabledColor: null,
    /// ListTile 사이 , DataTable 의 행 사이 등에 사용되는 Divider 와 PopupMenuDivider 의 색상입니다.
    dividerColor: null,
    /// 사용된 포커스 색상은 구성 요소에 입력 포커스가 있음을 나타냅니다.
    focusColor: null,
    /// 잉크 얼룩 애니메이션 중에 사용되거나 메뉴의 항목을 나타내기 위해 사용되는 강조 색상이 선택되었습니다.
    highlightColor: null,
    /// 힌트 텍스트 또는 자리 표시자 텍스트(예: TextField 필드 )에 사용할 색상입니다 .
    hintColor: null,
    /// 포인터가 구성 요소 위에 있을 때 나타내는 데 사용되는 가리키기 색상입니다.
    hoverColor: null,
    /// 탭 표시줄에서 선택한 탭 표시기의 색상입니다.
    indicatorColor: null,
    /// 앱의 주요 부분(도구 모음, 탭 모음 등)의 배경색(단색)
    primaryColor: null,
    /// primaryColor 의 어두운 버전입니다 .
    primaryColorDark: null,
    /// primaryColor 의 밝은 버전입니다 .
    primaryColorLight: null,
    /// 앱의 주요 부분(도구 모음, 탭 모음 등)의 배경색(팔레트)
    primarySwatch: null,
    /// Scaffold 의 기반이 되는 머티리얼 의 기본 색상입니다 . 일반적인 머티리얼 앱 또는 앱 내 페이지의 배경색입니다.
    scaffoldBackgroundColor: null,
    /// 선택된 행이 있을 때 PaginatedDataTable 의 헤더 색상입니다 .
    secondaryHeaderColor: null,
    /// Material 위젯이 고도 그림자를 그리는 데 사용하는 색상입니다 .
    shadowColor: null,
    /// 스플래시의 색상입니다 .
    splashColor: null,
    /// 비활성(그러나 활성화된) 상태의 위젯에 사용되는 색상입니다. 예를 들어 선택되지 않은 확인란입니다. disabledColor 도 참조하십시오 .
    unselectedWidgetColor: null,


    // 글자 & 아이콘 -> ----------------------------------- ↓ ↓

    /// 글꼴
    fontFamily: null,
    /// 글꼴 대체
    fontFamilyFallback: null,
    /// 글꼴 패키지
    package: null,
    /// 카드 및 캔버스 색상과 대조되는 아이콘 테마.
    iconTheme: null,
    /// 원색과 대조되는 아이콘 테마.
    primaryIconTheme: null,
    /// 원색과 대조되는 텍스트 테마입니다.
    primaryTextTheme: null,
    /// 카드 및 캔버스 색상과 대비되는 색상의 텍스트입니다.
    textTheme: null,
    /// textTheme 를 구성하는 데 사용되는 색상 및 기하학 TextTheme 값입니다 . 플랫폼 에 적합한 서체를 기본으로 합니다.
    typography: null,


    // 위젯 테마 -> ----------------------------------- ↓ ↓
    
    /// BackButtonIcon , CloseButtonIcon , DrawerButtonIcon 또는 EndDrawerButtonIcon 아이콘을 사용자 지정하기 위한 테마입니다 .
    actionIconTheme: null,
    /// AppBars의 색상, 높이, 밝기, iconTheme 및 textTheme을 사용자 지정하기 위한 테마입니다.
    appBarTheme: null,
    /// 배지 색상을 사용자 지정하기 위한 테마입니다.
    badgeTheme: null,
    /// 배너 색상 및 텍스트 스타일을 사용자 지정하기 위한 테마입니다.
    bannerTheme: null,
    /// BottomAppBar의 모양, 높이 및 색상을 사용자 지정하기 위한 테마입니다.
    bottomAppBarTheme: null,
    /// BottomNavigationBar 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    bottomNavigationBarTheme: null,
    /// 바텀 시트의 색상, 높이 및 모양을 사용자 정의하기 위한 테마입니다.
    bottomSheetTheme: null,
    /// ButtonBar 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    buttonBarTheme: null,
    /// DropdownButton 및 ButtonBar와 같은 버튼 위젯의 기본 구성을 정의합니다.
    buttonTheme: null,
    /// 카드를 렌더링하는 데 사용되는 색상 및 스타일. 이것은 CardTheme.of에서 반환된 값입니다.
    cardTheme: null,
    /// 체크박스 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    checkboxTheme: null,
    /// 칩을 렌더링하는 데 사용되는 색상과 스타일. ChipTheme.of에서 반환되는 값입니다.
    chipTheme: null,
    /// DataTable 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    dataTableTheme: null,
    /// DatePickerDialog 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    datePickerTheme: null,
    /// 대화 모양을 사용자 지정하기 위한 테마입니다.
    dialogTheme: null,
    /// Dividers, VerticalDividers 등의 색상, 두께 및 들여쓰기를 사용자 지정하기 위한 테마입니다.
    dividerTheme: null,
    /// Drawer 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    drawerTheme: null,
    /// DropdownMenu 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    dropdownMenuTheme: null,
    /// ElevatedButtons의 모양과 내부 레이아웃을 사용자 지정하기 위한 테마입니다.
    elevatedButtonTheme: null,
    /// ExpansionTiles의 시각적 속성을 사용자 지정하기 위한 테마입니다.
    expansionTileTheme: null,
    /// FilledButtons의 모양과 내부 레이아웃을 사용자 지정하기 위한 테마입니다.
    filledButtonTheme: null,
    /// FloatingActionButton의 모양, 높이 및 색상을 사용자 지정하기 위한 테마입니다.
    floatingActionButtonTheme: null,
    /// IconButton의 모양과 내부 레이아웃을 사용자 지정하기 위한 테마입니다.
    iconButtonTheme: null,
    /// ListTile 위젯의 모양을 사용자 지정하기 위한 테마입니다.
    listTileTheme: null,
    /// MenuBar 위젯에 의해 생성된 메뉴 모음의 색상, 모양, 높이 및 기타 MenuStyle 측면을 사용자 지정하기 위한 테마입니다.
    menuBarTheme: null,
    /// SubmenuButton 또는 MenuItemButton에 의해 생성된 계단식 메뉴 버튼의 색상, 모양, 높이 및 텍스트 스타일을 사용자 지정하기 위한 테마입니다.
    menuButtonTheme: null,
    /// SubmenuButton 위젯에 의해 생성된 메뉴의 색상, 모양, 높이 및 기타 MenuStyle 속성을 사용자 정의하기 위한 테마입니다.
    menuTheme: null,
    /// NavigationBar의 배경색, 텍스트 스타일 및 아이콘 테마를 사용자 지정하기 위한 테마입니다.
    navigationBarTheme: null,
    /// NavigationDrawer의 배경색, 텍스트 스타일 및 아이콘 테마를 사용자 지정하기 위한 테마입니다.
    navigationDrawerTheme: null,
    /// NavigationRail의 배경색, 고도, 텍스트 스타일 및 아이콘 테마를 사용자 지정하기 위한 테마입니다.
    navigationRailTheme: null,
    /// OutlinedButtons의 모양과 내부 레이아웃을 사용자 지정하기 위한 테마입니다.
    outlinedButtonTheme: null,
    /// 팝업 메뉴의 색상, 모양, 고도 및 텍스트 스타일을 사용자 지정하기 위한 테마입니다.
    popupMenuTheme: null,
    /// ProgressIndicator 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    progressIndicatorTheme: null,
    /// 라디오 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    radioTheme: null,
    /// SearchBar 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    searchBarTheme: null,
    /// SearchAnchor 위젯에서 만든 검색 보기의 모양과 레이아웃을 사용자 정의하기 위한 테마입니다.
    searchViewTheme: null,
    /// SegmentedButton 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    segmentedButtonTheme: null,
    /// Slider를 렌더링하는 데 사용되는 색상과 모양입니다. SliderTheme.of에서 반환된 값입니다.
    sliderTheme: null,
    /// SnackBar의 색상, 모양, 높이 및 동작을 사용자 지정하기 위한 테마입니다.
    snackBarTheme: null,
    /// 스위치 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    switchTheme: null,
    /// 탭 막대 표시기의 크기, 모양 및 색상을 사용자 지정하기 위한 테마입니다.
    tabBarTheme: null,
    /// TextButtons의 모양과 내부 레이아웃을 사용자 지정하기 위한 테마입니다.
    textButtonTheme: null,
    /// TextField 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    textSelectionTheme: null,
    /// 시간 선택기 위젯의 모양과 레이아웃을 사용자 지정하기 위한 테마입니다.
    timePickerTheme: null,
    /// ToggleButtons 위젯의 기본 구성을 정의합니다.
    toggleButtonsTheme: null,
    /// 도구 설명의 시각적 속성을 사용자 지정하기 위한 테마입니다. TooltipTheme.of에서 반환된 값입니다.
    tooltipTheme: null,
  );
}
