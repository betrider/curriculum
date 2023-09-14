echo "Welcome to du_mobile utilities:"
echo
echo "[1] build runner"
echo "[2] build runner --delete-conflicting-outputs"
echo
read -p "Run: " selection

case $selection in

    1)
    echo "build_runner"
    flutter pub run build_runner build
    ;;

    2)
    echo "build_runner 초기화"
    flutter pub run build_runner build --delete-conflicting-outputs
    ;;

    *)
    echo "Unknown command!!"
    ;;

esac
