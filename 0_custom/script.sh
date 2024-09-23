echo "자동화 스크립트 목록입니다."
echo
echo "[1] generate locale file"
echo
read -p "Run: " selection

case $selection in

    1)
    echo "generate locale file"
    dart run :easy_localization_generate
    ;;

    *)
    echo "Unknown command!!"
    ;;

esac
