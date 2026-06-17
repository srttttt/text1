import 'package:flutter/material.dart';

class HangzhouPage extends StatelessWidget {
  const HangzhouPage({super.key});

  static const List<Map<String, dynamic>> attractions = [
    {
      'name': '서호 / 西湖',
      'nameZh': 'West Lake',
      'rating': '4.9',
      'coverUrl': 'https://cdn.pixabay.com/photo/2020/12/14/21/32/west-lake-5832103_1280.jpg',
      'description':
          '서호는 항저우 서쪽에 위치한 담수호로, 2011년 유네스코 세계문화유산에 등재되었습니다.\n\n西湖位于杭州西部，2011年被列入联合国教科文组织世界文化遗产。',
      'highlights': ['소제춘효 / 苏堤春晓', '단교잔설 / 断桥残雪', '평호추월 / 平湖秋月'],
      'food': '서호초어 / 西湖醋鱼',
      'foodDesc': '서호 인근 식당의 대표 요리 / 西湖边餐厅代表菜',
      'tip': '봄(3~4월) 벚꽃 시즌이 가장 아름답습니다 / 春季(3-4月)樱花季节最美',
    },
    {
      'name': '영은사 / 灵隐寺',
      'nameZh': 'Lingyin Temple',
      'rating': '4.8',
      'coverUrl': 'https://thf.bing.com/th/id/R.c2612c82571103816e29457d1608d061?rik=O9NFOCI1lgPCrA&riu=http%3a%2f%2fimg.pconline.com.cn%2fimages%2fupload%2fupc%2ftx%2fphotoblog%2f1108%2f14%2fc6%2f8643612_8643612_1313297013359.jpg&ehk=NvJ9iWLXF%2fNQH%2fy7mLwd%2bkMd3GcYk1hhc2hBMNIhIHY%3d&risl=&pid=ImgRaw&r=0',
      'description':
          '영은사는 동진 시대(326년)에 창건된 강남 최대 불교 사원입니다.\n\n灵隐寺创建于东晋时期，是江南最大的佛教寺院。',
      'highlights': ['비래봉 석각 / 飞来峰石刻', '대웅보전 / 大雄宝殿', '천왕전 / 天王殿'],
      'food': '소채 요리 / 素斋',
      'foodDesc': '영은사 내 채식 전문 식당 / 寺内素食餐厅',
      'tip': '이른 아침 방문 시 조용한 분위기를 즐길 수 있습니다 / 清晨参观可感受宁静',
    },
    {
      'name': '송성 / 宋城',
      'nameZh': 'Songcheng',
      'rating': '4.7',
      'coverUrl': 'https://thf.bing.com/th/id/R.7f978114cd58ef1b6dd5c5d889d416d8?rik=LWlyrS8eaKKJLA&riu=http%3a%2f%2fn.sinaimg.cn%2fsinacn22%2f227%2fw1110h717%2f20180808%2f589a-hhkusku0732528.png&ehk=55bLBTRgr96W1aEQN93uEPey3nJqcLll6%2bUdjv9K3r0%3d&risl=&pid=ImgRaw&r=0',
      'description':
          '송성은 남송 시대 문화를 재현한 대형 테마파크입니다.\n\n宋城是再现南宋文化的大型主题公园。',
      'highlights': ['송성천고정 공연 / 宋城千古情', '송대 거리 / 宋代街市', '전통 공예 체험'],
      'food': '동파육 / 东坡肉',
      'foodDesc': '송성 내 전통 식당의 대표 요리 / 景区内传统餐厅代表菜',
      'tip': '저녁 공연 시간에 맞춰 방문하는 것을 추천합니다 / 建议傍晚观看演出',
    },
    {
      'name': '서계 습지 / 西溪湿地',
      'nameZh': 'Xixi Wetland',
      'rating': '4.6',
      'coverUrl': 'https://pic3.zhimg.com/v2-b5e1c8497e24e6f0e085aaa788d88306_1440w.jpg?source=172ae18b',
      'description':
          '서계 습지는 중국 최초의 국가 습지공원입니다.\n\n西溪湿地是中国第一个国家湿地公园。',
      'highlights': ['갈대밭 / 芦苇荡', '매화섬 / 梅花岛', '작은 배 체험 / 摇橹船体验'],
      'food': '농가 요리 / 农家菜',
      'foodDesc': '습지 내 수상 레스토랑의 신선한 민물 요리 / 湿地内水上餐厅新鲜河鲜',
      'tip': '11월 갈대 시즌이 가장 아름답습니다 / 11月芦苇季节最美',
    },
  ];

  static const List<Map<String, String>> _foodList = [
    {'emoji': '🥘', 'name': '서호초어 / 西湖醋鱼', 'desc': '서호 근처 전통 식당 대표 요리', 'spot': '서호 / 西湖', 'bg': 'teal'},
    {'emoji': '🍖', 'name': '동파육 / 东坡肉', 'desc': '송성 전통 식당, 소동파가 즐겨먹던 요리', 'spot': '송성 / 宋城', 'bg': 'red'},
    {'emoji': '🥬', 'name': '소채 요리 / 素斋', 'desc': '영은사 내 전통 불교 채식', 'spot': '영은사 / 灵隐寺', 'bg': 'green'},
    {'emoji': '🦐', 'name': '룽징 새우 / 龙井虾仁', 'desc': '룽징차와 새우의 조합 명물', 'spot': '서호 / 西湖', 'bg': 'orange'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F7F4),
      body: CustomScrollView(
        slivers: [
          _buildAppBar('항저우 파노라마 / 杭州全景', 'https://thf.bing.com/th/id/R.17b13dabedf3612be20ce643bdd36973?rik=wR9nHAhK01ly%2fQ&riu=http%3a%2f%2fimg.pconline.com.cn%2fimages%2fupload%2fupc%2ftx%2fphotoblog%2f1208%2f24%2fc5%2f13180459_13180459_1345797688052.jpg&ehk=bQ%2b8S%2b%2bbvuV%2bKerPzQMA%2fUoSAzBhIK63EMjKarMPaio%3d&risl=&pid=ImgRaw&r=0'),
          SliverToBoxAdapter(child: _IntroCard(
            title: '고향 지역 소개 / 家乡地区介绍',
            content: '항저우는 중국 저장성 성도로 인구 약 1300만 명의 역사 도시입니다. 서호는 유네스코 세계문화유산입니다.\n\n杭州是浙江省省会，人口约1300万，西湖是联合国教科文组织世界文化遗产。',
            stats: const [
              {'icon': Icons.people, 'value': '1300만', 'label': '인구 / 人口', 'color': Color(0xFF1A6B4A)},
              {'icon': Icons.history, 'value': '2200년', 'label': '역사 / 历史', 'color': Color(0xFF3A7BD5)},
              {'icon': Icons.public, 'value': '1곳', 'label': '세계유산 / 世界遗产', 'color': Color(0xFFE07B39)},
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
            ['서호 / 西湖', '뇌봉탑 / 雷峰塔', '하방가 / 河坊街'],
            ['영은사 / 灵隐寺', '서계 습지 / 西溪湿地', '룽징촌 / 龙井村'],
            ['송성 / 宋城', '첸탕강 / 钱塘江', '알리바바 캠퍼스 / 阿里巴巴园区'],
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