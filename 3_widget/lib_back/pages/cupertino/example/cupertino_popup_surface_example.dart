import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPopupSurfaceExample extends StatelessWidget {
  const CupertinoPopupSurfaceExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return CupertinoPopupSurface(
                  isSurfacePainted: true,
                  child: Container(
                    padding: const EdgeInsetsDirectional.all(20),
                    color: CupertinoColors.white,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).copyWith().size.height * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          width: 250,
                          height: 160,
                          child: FlutterLogo(),
                        ),
                        const Material(
                            child: Text(
                          "Are You Flutter Developer?",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontSize: 18,
                          ),
                        )),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("NO")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("YES")),
                        ]),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Show popup surface'),
        ),
      ),
    );
  }
}
