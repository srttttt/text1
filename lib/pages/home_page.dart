import 'package:flutter/material.dart';
import 'guizhou_page.dart';
import 'suzhou_page.dart';
import 'hangzhou_food_page.dart';
import 'hangzhou_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, dynamic>> destinations = const [
    {
      'nameZh': '贵州 · 贵阳',
      'nameKo': '구이저우 · 구이양',
      'intro': '喀斯特地貌，多民族文化，酸辣美食',
      'heroImage': 'https://images.pexels.com/photos/4101555/pexels-photo-4101555.jpeg?auto=compress&cs=tinysrgb&w=600',
      'page': GuizhouPage.new,   // 存储构造函数引用
    },
    {
      'nameZh': '苏州',
      'nameKo': '쑤저우',
      'intro': '古典园林，水乡古镇，丝绸之府',
      'heroImage': 'https://images.pexels.com/photos/1294645/pexels-photo-1294645.jpeg?auto=compress&cs=tinysrgb&w=600',
      'page': SuzhouPage.new,
    },
    {
      'nameZh': '杭州 · 美食专题',
      'nameKo': '항저우 · 미식 특집',
      'intro': '杭帮菜，龙井茶，老字号美食',
      'heroImage': 'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600',
      'page': HangzhouFoodPage.new,
    },
    {
      'nameZh': '杭州 · 全景专题',
      'nameKo': '항저우 · 파노라마',
      'intro': '西湖，灵隐寺，宋城，西溪湿地',
      'heroImage': 'https://images.pexels.com/photos/1579213/pexels-photo-1579213.jpeg?auto=compress&cs=tinysrgb&w=600',
      'page': HangzhouPage.new,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('故乡漫游', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1A5F7A), Color(0xFFF5E7D9)],
          ),
        ),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 120,
                child: Center(
                  child: Text(
                    '寻味 · 山水 · 故里',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white, shadows: [Shadow(blurRadius: 10, color: Colors.black45)]),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => _DestinationCard(dest: destinations[index]),
                  childCount: destinations.length,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(bottom: 30)),
          ],
        ),
      ),
    );
  }
}

class _DestinationCard extends StatelessWidget {
  final Map<String, dynamic> dest;
  const _DestinationCard({required this.dest});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 调用存储的构造函数，生成新的页面实例
        Navigator.push(context, MaterialPageRoute(builder: (_) => dest['page']()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8, offset: const Offset(0, 4))],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 6,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
                child: Image.network(
                  dest['heroImage'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  errorBuilder: (_, __, ___) => Container(color: Colors.grey[200], child: const Icon(Icons.broken_image)),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${dest['nameZh']} · ${dest['nameKo']}', style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(dest['intro'], style: const TextStyle(fontSize: 11, color: Colors.grey)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Icon(Icons.chevron_right, size: 18, color: Colors.green)],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}