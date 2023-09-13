echo "Welcome to du_mobile utilities:"
echo
echo "[1] apk 빌드(android)"
echo "[2] appbundle 빌드(android)"
echo "[3] ipa 빌드(ios)"
echo "[4] ios 빌드(ios)"
echo
read -p "Run: " selection

case $selection in

    1)
    echo "apk 빌드"
    flutter build apk
    ;;

    2)
    echo "appbundle 빌드"
    flutter build appbundle
    ;;

    3)
    echo "ipa 빌드"
    flutter build ipa
    ;;

    4)
    echo "ios 빌드"
    flutter build ios
    ;;

    *)
    echo "Unknown command!!"
    ;;

esac
