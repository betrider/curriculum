echo "자동화 스크립트 목록입니다."
echo
echo "[1] generate locale file"
echo "[2] firebase hosting"
echo
read -p "Run: " selection

case $selection in

    1)
    echo "generate locale file"
    dart run :easy_localization_generate
    ;;

    2)
    echo "firebase hosting"
    flutter build web
    firebase deploy
    ;;

    *)
    echo "Unknown command!!"
    ;;

esac
