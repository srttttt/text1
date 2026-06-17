import 'package:flutter/material.dart';

class SuzhouPage extends StatelessWidget {
  const SuzhouPage({super.key});

  static const List<Map<String, dynamic>> attractions = [
    {
      'name': '졸정원 / 拙政园',
      'nameZh': 'Zhuozheng Yuan',
      'rating': '4.9',
      'coverUrl': 'https://img.pconline.com.cn/images/upload/upc/tx/photoblog/1905/30/c7/150458168_1559226795412.jpg',
      'description':
          '졸정원(拙政园)은 중국 4대 명원 중 하나로, 명나라 시대에 조성되었습니다. 연못과 산책로, 정자가 아름답습니다.\n\n'
          '拙政园是中国四大名园之一，建于明代，以水池为中心，亭台楼阁错落有致。',
      'highlights': ['원림 조경 / 园林景观', '원앙청 / 远香堂', '소창산방 / 小沧浪', '유설정 / 留听阁'],
      'food': '쑹수구이위 / 松鼠鳜鱼',
      'foodDesc': '쑤저우 전통 요리, 새콤달콤하고 바삭함 / 苏州传统名菜，酸甜酥脆',
      'tip': '봄(3-5월)과 가을(9-11월)이 가장 아름다운 계절 / 春秋两季最美',
    },
    {
      'name': '핑장루 / 平江路',
      'nameZh': 'Pingjiang Road',
      'rating': '4.7',
      'coverUrl': 'https://images.pexels.com/photos/1050111/pexels-photo-1050111.jpeg?auto=compress&cs=tinysrgb&w=600',
      'description':
          '핑장루(平江路)는 쑤저우에서 가장 완벽하게 보존된 역사 지구로, 수로와 골목이 병행합니다.\n\n'
          '平江路是苏州保存最完整的历史街区，水陆并行，河街相邻。',
      'highlights': ['수로 / 水巷', '전통 공방 / 传统手工艺', '평탄 공연 / 评弹表演', '야경 / 夜景'],
      'food': '쑤저우 국수 / 苏式汤面',
      'foodDesc': '청량한 국물과 다양한 토핑 / 清汤底，多样浇头',
      'tip': '이른 아침이나 저녁에 방문하면 더 조용합니다 / 清晨或傍晚前往更清静',
    },
    {
      'name': '후추 / 虎丘',
      'nameZh': 'Tiger Hill',
      'rating': '4.8',
      'coverUrl': 'https://images.pexels.com/photos/1631262/pexels-photo-1631262.jpeg?auto=compress&cs=tinysrgb&w=600',
      'description':
          '후추(虎丘)는 쑤저우의 상징 중 하나로, “동쪽에 도착해 호구를 보지 않으면 왔다고 할 수 없다”는 말이 있습니다.\n\n'
          '虎丘是苏州的象征之一，有“到苏州不游虎丘，乃憾事也”的说法。',
      'highlights': ['운암사탑 / 云岩寺塔', '검지 / 剑池', '절단량 / 断梁殿', '만경산장 / 万景山庄'],
      'food': '자사육 / 酱汁肉',
      'foodDesc': '쑤저우식 고기 조림, 진한 간장 맛 / 苏州酱肉，咸香浓郁',
      'tip': '가을 단풍 시즌이 특히 아름답습니다 / 秋季红叶季节尤美',
    },
  ];

  static const List<Map<String, String>> _foodList = [
    {'emoji': '🐟', 'name': '쑹수구이위 / 松鼠鳜鱼', 'desc': '졸정원 근처 전통 식당 대표 요리 / 拙政园附近餐厅代表菜', 'spot': '졸정원 / 拙政园', 'bg': 'orange'},
    {'emoji': '🍜', 'name': '쑤저우 국수 / 苏式汤面', 'desc': '핑장루 골목의 노포 국수 / 平江路巷子里的老面馆', 'spot': '핑장루 / 平江路', 'bg': 'blue'},
    {'emoji': '🍖', 'name': '자사육 / 酱汁肉', 'desc': '후추 입구 전통 노포 / 虎丘入口传统老店', 'spot': '후추 / 虎丘', 'bg': 'red'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F7F4),
      body: CustomScrollView(
        slivers: [
          _buildAppBar('쑤저우 / 苏州', 'https://images.pexels.com/photos/1294645/pexels-photo-1294645.jpeg?auto=compress&cs=tinysrgb&w=1200'),
          SliverToBoxAdapter(child: _IntroCard(
            title: '고향 지역 소개 / 家乡地区介绍',
            content: '쑤저우(苏州)는 중국 장쑤성 남동부에 위치한 역사 문화 도시로, 정원과 운하로 유명합니다. '
                '“천국 위에, 쑤저우와 항저우 아래”라는 말이 있습니다.\n\n'
                '苏州位于中国江苏省东南部，以古典园林和大运河闻名，素有“上有天堂，下有苏杭”之美誉。',
            stats: const [
              {'icon': Icons.people, 'value': '1200만', 'label': '인구 / 人口', 'color': Color(0xFF1A6B4A)},
              {'icon': Icons.history, 'value': '2500년', 'label': '역사 / 历史', 'color': Color(0xFF3A7BD5)},
              {'icon': Icons.park, 'value': '69개', 'label': '정원 / 园林数', 'color': Color(0xFFE07B39)},
            ],
          )),
          _buildSectionHeader('대표 관광지 / 代表旅游景点', const Color(0xFF1A6B4A)),
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
          _buildSectionHeader('추천 여행 코스 / 推荐旅行路线', const Color(0xFF3A7BD5)),
          SliverToBoxAdapter(child: _RouteCard(routes: const [
            ['졸정원 / 拙政园', '쑤저우 박물관 / 苏州博物馆', '핑장루 / 平江路'],
            ['후추 / 虎丘', '산탕제 / 山塘街', '쑤저우 운하 유람 / 苏州运河游船'],
            ['동산 / 东山', '시산 / 西山', '타이후 호수 / 太湖'],
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