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
      'icon': Icons.landscape,
      'tag': '🏔️ 自然',
    },
    {
      'nameZh': '苏州',
      'nameKo': '쑤저우',
      'intro': '古典园林 · 水乡 · 丝绸之府',
      'heroImage': 'https://news.2500sz.com/uploadfiles/202206/08/2022060813442010924739.jpg',
      'page': SuzhouPage.new,
      'icon': Icons.park,
      'tag': '🏯 园林',
    },
    {
      'nameZh': '杭州 · 美食',
      'nameKo': '항저우 · 미식',
      'intro': '杭帮菜 · 龙井茶 · 老字号',
      'heroImage': 'https://pica.zhimg.com/v2-99f41777084deec4fc7cddc78a5f1526_r.jpg?source=1940ef5c',
      'page': HangzhouFoodPage.new,
      'icon': Icons.restaurant,
      'tag': '🍜 美食',
    },
    {
      'nameZh': '杭州 · 全景',
      'nameKo': '항저우 · 파노라마',
      'intro': '西湖 · 灵隐 · 宋城 · 西溪',
      'heroImage': 'https://tse1.mm.bing.net/th/id/OIP.QKeUvmHclYYGXdRoSkiBsAHaEK?r=0&cb=thfc1falcon2&rs=1&pid=ImgDetMain&o=7&rm=3',
      'page': HangzhouPage.new,
      'icon': Icons.waves,
      'tag': '🌊 全景',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          '故乡漫游',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            shadows: [Shadow(blurRadius: 8, color: Colors.black26)],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          // ---- 渐变背景 ----
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
          // ---- 装饰圆 ----
          Positioned(
            top: -120,
            right: -100,
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.04),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -80,
            left: -120,
            child: Container(
              width: 450,
              height: 450,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.03),
                shape: BoxShape.circle,
              ),
            ),
          ),
          // ---- 主内容 ----
          CustomScrollView(
            slivers: [
              // ---- 标题区 ----
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 80, 24, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 4,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '寻味 · 山水 · 故里',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [Shadow(blurRadius: 12, color: Colors.black38)],
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                '중국 4개 도시의 여행과 미식 이야기',
                                style: TextStyle(fontSize: 13, color: Colors.white70),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // ---- 卡片网格 ----
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

// ============================================================
//  卡片组件（带优化）
// ============================================================
class _DestinationCard extends StatefulWidget {
  final Map<String, dynamic> dest;
  const _DestinationCard({required this.dest});

  @override
  State<_DestinationCard> createState() => _DestinationCardState();
}

class _DestinationCardState extends State<_DestinationCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _glowAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _glowAnimation = Tween<double>(begin: 0.0, end: 0.3).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final d = widget.dest;
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => d['page'](),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
            transitionDuration: const Duration(milliseconds: 300),
          ),
        );
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => Transform.scale(
          scale: _scaleAnimation.value,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15 + _glowAnimation.value),
                  blurRadius: 20 + _glowAnimation.value * 20,
                  offset: Offset(0, 8 + _glowAnimation.value * 8),
                ),
                // 光晕效果
                BoxShadow(
                  color: Colors.white.withOpacity(_glowAnimation.value * 0.3),
                  blurRadius: 40,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // ---- 背景图片 ----
                  Image.network(
                    d['heroImage'],
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Container(
                        color: Colors.grey[200],
                        child: const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white54,
                          ),
                        ),
                      );
                    },
                    errorBuilder: (_, __, ___) => Container(
                      color: Colors.grey[300],
                      child: Icon(
                        d['icon'],
                        color: Colors.grey[500],
                        size: 50,
                      ),
                    ),
                  ),
                  // ---- 渐变遮罩 ----
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.85),
                        ],
                        stops: const [0.0, 0.3, 0.7, 1.0],
                      ),
                    ),
                  ),
                  // ---- 顶部标签 ----
                  Positioned(
                    top: 12,
                    left: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.15),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(d['icon'], color: Colors.white70, size: 12),
                          const SizedBox(width: 4),
                          Text(
                            d['tag'],
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ---- 右上角探索标签 ----
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.arrow_forward, color: Colors.white, size: 10),
                          SizedBox(width: 4),
                          Text(
                            'Explore',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ---- 底部文字 ----
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '${d['nameZh']} · ${d['nameKo']}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(blurRadius: 8, color: Colors.black45)
                                  ],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 3),
                        Text(
                          d['intro'],
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.85),
                            fontSize: 11,
                            shadows: [
                              Shadow(blurRadius: 4, color: Colors.black45)
                            ],
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
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