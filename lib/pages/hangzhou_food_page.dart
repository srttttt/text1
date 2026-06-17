import 'package:flutter/material.dart';

class HangzhouFoodPage extends StatelessWidget {
  const HangzhouFoodPage({super.key});

  static const List<Map<String, dynamic>> attractions = [
    {
      'name': '하방가 / 河坊街',
      'nameZh': 'Hefang Street',
      'rating': '4.8',
      'coverUrl': 'https://images.pexels.com/photos/2609224/pexels-photo-2609224.jpeg?auto=compress&cs=tinysrgb&w=600',
      'description':
          '하방가(河坊街)는 항저우에서 가장 유명한 음식 거리로, 전통 간식과 노포가 많습니다.\n\n'
          '河坊街是杭州最著名的美食街，聚集了传统小吃和老字号。',
      'highlights': ['정승고 / 定胜糕', '총바오후이 / 葱包桧', '쇠고기 버미엘 / 牛肉粉丝', '산채 / 酸菜'],
      'food': '총바오후이 / 葱包桧',
      'foodDesc': '전통 길거리 음식, 파와 튀김을 눌러 구워 만듦 / 传统街头小吃，压烤的葱油饼包油条',
      'tip': '저녁 6시 이후 야시장이 열립니다 / 晚上六点后夜市开始',
    },
    {
      'name': '누와이라우 / 楼外楼',
      'nameZh': 'Louwailou Restaurant',
      'rating': '4.9',
      'coverUrl': 'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600',
      'description':
          '누와이라우(楼外楼)는 서호 근처의 유명한 노포로, 항저우 요리의 대명사입니다.\n\n'
          '楼外楼是西湖边的百年老店，杭帮菜的代表。',
      'highlights': ['서호초어 / 西湖醋鱼', '동파육 / 东坡肉', '용정새우 / 龙井虾仁', '숭인어 / 宋嫂鱼羹'],
      'food': '서호초어 / 西湖醋鱼',
      'foodDesc': '신선한 초어를 사용, 새콤달콤한 국물 / 鲜草鱼制作，酸甜酱汁',
      'tip': '점심 시간(11:30-13:30)은 대기가 필요합니다 / 午餐时段需排队',
    },
    {
      'name': '룽징촌 / 龙井村',
      'nameZh': 'Longjing Village',
      'rating': '4.7',
      'coverUrl': 'https://images.pexels.com/photos/994523/pexels-photo-994523.jpeg?auto=compress&cs=tinysrgb&w=600',
      'description':
          '룽징촌(龙井村)은 유명한 룽징차 산지로, 차밭 경관과 차 체험이 가능합니다.\n\n'
          '龙井村是龙井茶的产地，可以体验采茶和品茶。',
      'highlights': ['차밭 하이킹 / 茶山徒步', '제다 체험 / 炒茶体验', '차 문화 박물관 / 茶文化博物馆', '다과 / 茶点'],
      'food': '룽징새우 / 龙井虾仁',
      'foodDesc': '신선한 새우와 룽징차 잎으로 조리 / 鲜虾仁配龙井茶叶炒制',
      'tip': '봄(3-4월)에 새로운 차를 맛볼 수 있습니다 / 春季(3-4月)可品新茶',
    },
  ];

  static const List<Map<String, String>> _foodList = [
    {'emoji': '🐟', 'name': '서호초어 / 西湖醋鱼', 'desc': '누와이라우 대표 요리 / 楼外楼招牌菜', 'spot': '누와이라우 / 楼外楼', 'bg': 'red'},
    {'emoji': '🍖', 'name': '동파육 / 东坡肉', 'desc': '소동파가 즐긴 돼지고기 조림 / 苏东坡喜爱的红烧肉', 'spot': '누와이라우 / 楼外楼', 'bg': 'orange'},
    {'emoji': '🍤', 'name': '룽징새우 / 龙井虾仁', 'desc': '룽징차 향이 나는 새우 요리 / 带有龙井茶香的虾仁', 'spot': '룽징촌 / 龙井村', 'bg': 'green'},
    {'emoji': '🥠', 'name': '정승고 / 定胜糕', 'desc': '하방가 전통 찹쌀 떡 / 河坊街传统糯米糕', 'spot': '하방가 / 河坊街', 'bg': 'purple'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F7F4),
      body: CustomScrollView(
        slivers: [
          _buildAppBar('항저우 미식 / 杭州美食', 'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1200'),
          SliverToBoxAdapter(child: _IntroCard(
            title: '고향 지역 소개 / 家乡地区介绍',
            content: '항저우(杭州)는 중국 저장성 성도로, 서호 문화와 맛있는 항저우 요리로 유명합니다. '
                '항저우 요리는 담백하고 신선하며, 계절 재료를 중시합니다.\n\n'
                '杭州是浙江省省会，以西湖文化和美味的杭帮菜闻名。杭帮菜清淡鲜美，注重时令食材。',
            stats: const [
              {'icon': Icons.restaurant, 'value': '200+', 'label': '노포 / 老字号', 'color': Color(0xFFE07B39)},
              {'icon': Icons.eco, 'value': '3대', 'label': '명차 / 名茶', 'color': Color(0xFF1A6B4A)},
              {'icon': Icons.star, 'value': '8대', 'label': '명요리 / 名菜', 'color': Color(0xFF3A7BD5)},
            ],
          )),
          _buildSectionHeader('음식 명소 / 美食打卡点', const Color(0xFF1A6B4A)),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _AttractionCard(
                  attraction: attractions[index],
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AttractionDetailPage(attraction: attractions[index]))),
                ),
                childCount: attractions.length,
              ),
            ),
          ),
          _buildSectionHeader('추천 미식 투어 / 推荐美食路线', const Color(0xFF3A7BD5)),
          SliverToBoxAdapter(child: _RouteCard(routes: const [
            ['하방가 / 河坊街 (정승고, 총바오후이)', '우산 야시장 / 吴山夜市 (소고기 버미엘)'],
            ['누와이라우 / 楼外楼 (서호초어, 동파육)', '취웬관 / 奎元馆 (새우튀김 우동)'],
            ['룽징촌 / 龙井村 (룽징새우, 차)', '메이자우 / 梅家坞 (농가 요리)'],
          ])),
          _buildSectionHeader('경관별 추천 음식 / 景点相关美食', const Color(0xFFE07B39)),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 30),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _FoodCard(food: _foodList[index]),
                childCount: _foodList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar(String title, String imageUrl) {
    return SliverAppBar(
      expandedHeight: 280,
      pinned: true,
      backgroundColor: const Color(0xFF1A6B4A),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        background: Stack(fit: StackFit.expand, children: [
          Image.network(imageUrl, fit: BoxFit.cover, errorBuilder: (_, __, ___) => Container(color: Colors.grey[300])),
          Container(decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.transparent, Colors.black45], begin: Alignment.topCenter, end: Alignment.bottomCenter))),
        ]),
      ),
    );
  }

  SliverToBoxAdapter _buildSectionHeader(String title, Color color) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
        child: Row(children: [
          Container(width: 4, height: 22, decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(2))),
          const SizedBox(width: 8),
          Text(title, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: color)),
        ]),
      ),
    );
  }
}

class _IntroCard extends StatelessWidget {
  final String title; final String content; final List<Map<String, dynamic>> stats;
  const _IntroCard({required this.title, required this.content, required this.stats});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [Container(padding: const EdgeInsets.all(8), decoration: BoxDecoration(color: const Color(0xFF1A6B4A).withOpacity(0.12), borderRadius: BorderRadius.circular(10)), child: const Icon(Icons.location_city, color: Color(0xFF1A6B4A), size: 20)), const SizedBox(width: 10), Text(title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF1A6B4A)))]),
        const SizedBox(height: 12),
        const Divider(),
        const SizedBox(height: 12),
        Text(content, style: const TextStyle(fontSize: 13, height: 1.7, color: Color(0xFF444444))),
        const SizedBox(height: 16),
        Row(children: stats.map((stat) => Expanded(child: _StatChip(icon: stat['icon'], value: stat['value'], label: stat['label'], color: stat['color']))).toList()),
      ]),
    );
  }
}

class _StatChip extends StatelessWidget {
  final IconData icon; final String value; final String label; final Color color;
  const _StatChip({required this.icon, required this.value, required this.label, required this.color});
  @override
  Widget build(BuildContext context) => Container(margin: const EdgeInsets.symmetric(horizontal: 4), padding: const EdgeInsets.symmetric(vertical: 8), decoration: BoxDecoration(color: color.withOpacity(0.08), borderRadius: BorderRadius.circular(12), border: Border.all(color: color.withOpacity(0.25))), child: Column(children: [Icon(icon, color: color, size: 18), const SizedBox(height: 4), Text(value, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: color)), Text(label, style: const TextStyle(fontSize: 10, color: Colors.grey))]));
}

class _AttractionCard extends StatelessWidget {
  final Map<String, dynamic> attraction; final VoidCallback onTap;
  const _AttractionCard({required this.attraction, required this.onTap});
  @override
  Widget build(BuildContext context) => GestureDetector(onTap: onTap, child: Container(margin: const EdgeInsets.only(bottom: 16), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10)]), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    ClipRRect(borderRadius: const BorderRadius.vertical(top: Radius.circular(16)), child: Image.network(attraction['coverUrl'], height: 180, width: double.infinity, fit: BoxFit.cover, errorBuilder: (_, __, ___) => Container(height: 180, color: Colors.grey[200], child: const Icon(Icons.broken_image, size: 60)))),
    Padding(padding: const EdgeInsets.all(14), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(attraction['name'], style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), Row(children: [Text(attraction['nameZh'], style: const TextStyle(fontSize: 11, color: Colors.grey)), const SizedBox(width: 8), const Icon(Icons.star, color: Color(0xFFFFC107), size: 13), Text(attraction['rating'], style: const TextStyle(fontSize: 11, color: Color(0xFFFFC107)))])]),
        Container(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6), decoration: BoxDecoration(color: const Color(0xFF1A6B4A), borderRadius: BorderRadius.circular(20)), child: const Row(children: [Text('상세보기 / 详情', style: TextStyle(color: Colors.white, fontSize: 11)), SizedBox(width: 4), Icon(Icons.arrow_forward_ios, color: Colors.white, size: 10)]))
      ]),
      const SizedBox(height: 8),
      Text((attraction['description'] as String).split('\n\n')[0], maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13, color: Color(0xFF666666))),
      const SizedBox(height: 10),
      Wrap(spacing: 6, runSpacing: 6, children: (attraction['highlights'] as List<String>).map((h) => Container(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3), decoration: BoxDecoration(color: const Color(0xFFE8F5EE), borderRadius: BorderRadius.circular(20), border: Border.all(color: const Color(0xFFB2DFCE))), child: Text(h, style: const TextStyle(fontSize: 11, color: Color(0xFF1A6B4A))))).toList())
    ]))
  ])));
}

class _RouteCard extends StatelessWidget {
  final List<List<String>> routes;
  const _RouteCard({required this.routes});
  @override
  Widget build(BuildContext context) => Container(margin: const EdgeInsets.all(16), padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)]), child: Column(children: List.generate(routes.length, (i) => Column(children: [ _RouteDay(day: '${i+1}일차 / 第${i+1}天', stops: routes[i]), if (i != routes.length-1) const SizedBox(height: 12) ]))));
}

class _RouteDay extends StatelessWidget {
  final String day; final List<String> stops;
  const _RouteDay({required this.day, required this.stops});
  @override
  Widget build(BuildContext context) => Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Container(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6), decoration: BoxDecoration(color: const Color(0xFF3A7BD5), borderRadius: BorderRadius.circular(20)), child: Text(day, style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold))),
    const SizedBox(width: 12),
    Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: List.generate(stops.length, (i) => Padding(padding: const EdgeInsets.only(bottom: 4), child: Row(children: [Icon(i == stops.length-1 ? Icons.flag : Icons.arrow_forward, size: 14, color: const Color(0xFF3A7BD5)), const SizedBox(width: 6), Expanded(child: Text(stops[i], style: const TextStyle(fontSize: 12)))])))))
  ]);
}

class _FoodCard extends StatelessWidget {
  final Map<String, String> food;
  const _FoodCard({required this.food});
  @override
  Widget build(BuildContext context) => Container(margin: const EdgeInsets.only(bottom: 10), padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)]), child: Row(children: [
    Container(width: 48, height: 48, decoration: BoxDecoration(color: _foodBgColor(food['bg']!), borderRadius: BorderRadius.circular(12)), child: Center(child: Text(food['emoji']!, style: const TextStyle(fontSize: 26)))),
    const SizedBox(width: 12),
    Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(food['name']!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF8B4513))), const SizedBox(height: 2), Text(food['desc']!, style: const TextStyle(fontSize: 12, color: Color(0xFF666666)))])),
    Container(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), decoration: BoxDecoration(color: const Color(0xFFE8F5EE), borderRadius: BorderRadius.circular(20)), child: Text(food['spot']!, style: const TextStyle(fontSize: 10, color: Color(0xFF1A6B4A))))
  ]));
}
Color _foodBgColor(String? bg) { switch(bg) { case 'red': return const Color(0xFFFFEBEB); case 'purple': return const Color(0xFFF3E5F5); case 'orange': return const Color(0xFFFFF3E0); default: return const Color(0xFFF5F5F5); } }

class AttractionDetailPage extends StatelessWidget {
  final Map<String, dynamic> attraction;
  const AttractionDetailPage({super.key, required this.attraction});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text(attraction['name'])), body: SingleChildScrollView(padding: const EdgeInsets.all(16), child: Column(children: [Image.network(attraction['coverUrl'], height: 200), const SizedBox(height: 16), Text(attraction['description'])])));
}