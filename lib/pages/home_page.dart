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
      'intro': '喀斯特地貌 · 多民族 · 酸辣美食',
      'heroImage': 'https://bpic.588ku.com/back_list_pic/21/08/26/82a271c43338c65ad801b8eaaea9e8b2.jpg!/fh/300/quality/90/unsharp/true/compress/true',
      'page': GuizhouPage.new,
      'gradient': [Color(0xFF0C4A6E), Color(0xFF1E7A5A)],
    },
    {
      'nameZh': '苏州',
      'nameKo': '쑤저우',
      'intro': '古典园林 · 水乡 · 丝绸之府',
      'heroImage': 'https://c-ssl.dtstatic.com/uploads/blog/202204/25/20220425184347_e0e54.thumb.1000_0.jpeg',
      'page': SuzhouPage.new,
      'gradient': [Color(0xFF2D4A7A), Color(0xFF4A7A9C)],
    },
    {
      'nameZh': '杭州 · 美食',
      'nameKo': '항저우 · 미식',
      'intro': '杭帮菜 · 龙井茶 · 老字号',
      'heroImage': 'https://img95.699pic.com/desgin_photo/40161/3119_list.jpg',
      'page': HangzhouFoodPage.new,
      'gradient': [Color(0xFF7A4A2D), Color(0xFFC47A3A)],
    },
    {
      'nameZh': '杭州 · 全景',
      'nameKo': '항저우 · 파노라마',
      'intro': '西湖 · 灵隐 · 宋城 · 西溪',
      'heroImage': 'https://imgs.699pic.com/images/501/066/897.jpg!list1x.v2',
      'page': HangzhouPage.new,
      'gradient': [Color(0xFF1A5F7A), Color(0xFF3A8FAF)],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('故乡漫游', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // 渐变背景
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF1A5F7A), Color(0xFF2D7A5A), Color(0xFFF5E7D9)],
                stops: [0.0, 0.4, 0.9],
              ),
            ),
          ),
          // 装饰性半透明圆
          Positioned(
            top: -100,
            right: -80,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -50,
            left: -100,
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.04),
                shape: BoxShape.circle,
              ),
            ),
          ),
          CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '寻味 · 山水 · 故里',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [Shadow(blurRadius: 12, color: Colors.black38)],
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '중국 4개 도시의 여행과 미식 이야기',
                        style: TextStyle(fontSize: 14, color: Colors.white70),
                      ),
                    ],
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
                    childAspectRatio: 0.78,
                  ),
                ),
              ),
              const SliverPadding(padding: EdgeInsets.only(bottom: 40)),
            ],
          ),
        ],
      ),
    );
  }
}

class _DestinationCard extends StatefulWidget {
  final Map<String, dynamic> dest;
  const _DestinationCard({required this.dest});

  @override
  State<_DestinationCard> createState() => _DestinationCardState();
}

class _DestinationCardState extends State<_DestinationCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.96).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    final d = widget.dest;
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => d['page']()));
      },
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) => Transform.scale(
          scale: _scaleAnimation.value,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.15), blurRadius: 20, offset: const Offset(0, 8)),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // 图片
                  Image.network(
                    d['heroImage'],
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(color: Colors.grey[300]),
                  ),
                  // 渐变遮罩
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                        stops: const [0.0, 0.4, 1.0],
                      ),
                    ),
                  ),
                  // 底部文字
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${d['nameZh']} · ${d['nameKo']}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            shadows: [Shadow(blurRadius: 8, color: Colors.black45)],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          d['intro'],
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.85),
                            fontSize: 12,
                            shadows: [Shadow(blurRadius: 4, color: Colors.black45)],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 右上角探索标签
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white.withOpacity(0.3)),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.arrow_forward, color: Colors.white, size: 12),
                          SizedBox(width: 4),
                          Text(
                            'Explore',
                            style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}