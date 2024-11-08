import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_18/components/components.dart';
import 'package:flutter_application_18/utils/max_width_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';

const String listItemTitleText = "A BETTER BLOG FOR WRITING";
const String listItemPreviewText =
    "Sed elementum tempus egestas sed sed risus. Mauris in aliquam sem fringilla ut morbi tincidunt. Placerat vestibulum lectus mauris ultrices eros. Et leo duis ut diam. Auctor neque vitae tempus […]";

class ListPage extends StatelessWidget {
  static const String name = 'list';

  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Drawer(
          backgroundColor: const Color(0xFFF5F5F5),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () => Navigator.pushNamedAndRemoveUntil(
                        context, Navigator.defaultRouteName, ModalRoute.withName(Navigator.defaultRouteName)),
                    child: Text("MINIMAL",
                        style: GoogleFonts.montserrat(color: textPrimary, fontSize: 30, letterSpacing: 3, fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: () {},
                  style: menuButtonStyle,
                  child: const Text(
                    "HOME",
                  ),
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: () {},
                  style: menuButtonStyle,
                  child: const Text(
                    "PORTFOLIO",
                  ),
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: () {},
                  style: menuButtonStyle,
                  child: const Text(
                    "STYLE",
                  ),
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: () {},
                  style: menuButtonStyle,
                  child: const Text(
                    "ABOUT",
                  ),
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: () {},
                  style: menuButtonStyle,
                  child: const Text(
                    "CONTACT",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList.list(
            children: [
              const MinimalMenuBar(),
              const ListItem(
                  imageUrl: "assets/images/paper_flower_overhead_bw_w1080.jpg", title: listItemTitleText, description: listItemPreviewText),
              divider,
              const ListItem(
                  imageUrl: "assets/images/iphone_cactus_tea_overhead_bw_w1080.jpg",
                  title: listItemTitleText,
                  description: listItemPreviewText),
              divider,
              const ListItem(
                  imageUrl: "assets/images/typewriter_overhead_bw_w1080.jpg", title: listItemTitleText, description: listItemPreviewText),
              divider,
              const ListItem(
                  imageUrl: "assets/images/coffee_paperclips_pencil_angled_bw_w1080.jpg",
                  title: listItemTitleText,
                  description: listItemPreviewText),
              divider,
              const ListItem(
                  imageUrl: "assets/images/joy_note_coffee_eyeglasses_overhead_bw_w1080.jpg",
                  title: listItemTitleText,
                  description: listItemPreviewText),
              divider,
              Container(
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: const ListNavigation(),
              ),
            ].toMaxWidth(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: MaxWidthBox(maxWidth: 1200, backgroundColor: Colors.white, child: Container()),
          ),
          ...[
            divider,
            const Footer(),
          ].toMaxWidthSliver(),
        ],
      ),
    );
  }
}
