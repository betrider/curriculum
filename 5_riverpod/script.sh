echo "Welcome to du_mobile utilities:"
echo
echo "[1] dart run build_runner build"
echo
read -p "Run: " selection

case $selection in

    1)
    echo "dart run build_runner build"
    dart run build_runner build
    ;;

    *)
    echo "Unknown command!!"
    ;;

esac
