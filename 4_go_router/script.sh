echo "Welcome to du_mobile utilities:"
echo
echo "[1] flutter pub global activate build_runner"
echo "[2] flutter pub run build_runner build"
echo
read -p "Run: " selection

case $selection in

    1)
    echo "flutter pub global activate build_runner"
    flutter pub global activate build_runner
    ;;

    2)
    echo "flutter pub run build_runner build"
    flutter pub run build_runner build
    ;;

    *)
    echo "Unknown command!!"
    ;;

esac
