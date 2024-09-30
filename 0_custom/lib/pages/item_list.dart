import 'package:flutter/material.dart';

class ItemListPage extends StatelessWidget {
  static const routeName = 'item-list';
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ItemListPage'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ItemCard();
        },
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      height: 150,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '15',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '한글에서 표 작성은 다양한 디자인이 가능하도록 기능을 제공합니다. 기본 표 형태로 간단하게 넣어도 되지만, 멋진 디자인의 표로 내용을 잘 담아 한글에서 표 작성은 다양한 디자인이 가능하도록 기능을 제공합니다. 기본 표 형태로 간단하게 넣어도 되지만, 멋진 디자인의 표로 내용을 잘 담아',
                  style: TextStyle(fontSize: 18),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Spacer(),
                Text(
                  '작성자: 김철수',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                width: constraints.maxHeight,
                height: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    'https://png.pngtree.com/thumb_back/fw800/background/20231219/pngtree-pink-pastel-background-with-pink-aesthetic-sky-image_15522922.png',
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
