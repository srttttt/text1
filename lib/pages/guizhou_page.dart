import 'package:flutter/material.dart';

class GuizhouPage extends StatelessWidget {
  const GuizhouPage({super.key});

  static const List<Map<String, dynamic>> attractions = [
    {
      'name': '황과수 폭포 / 黄果树瀑布',
      'nameZh': 'Huangguoshu Waterfall',
      'rating': '4.9',
      'coverUrl': 'https://newbbs-fd.zol-img.com.cn/t_s1200x5000/g6/M00/04/03/ChMkKWAGyQqIdcL9AAQZmP7Dgx0AAIjMQL-eikABBmw779.jpg',
      'description':
          '황과수 폭포(黄果树瀑布)는 중국 최대의 폭포로, 높이 77.8m, 폭 101m입니다. '
          '폭포 뒤편에는 수렴동(水帘洞)이 있어 폭포 안에서 밖을 볼 수 있습니다.\n\n'
          '黄果树瀑布是中国最大的瀑布，高77.8米，宽101米。瀑布后面有水帘洞，可从内部向外观看。',
      'highlights': ['수렴동 / 水帘洞', '협곡 풍경 / 峡谷景观', '야간 조명 / 夜间灯光秀', '급류 래프팅 / 激流漂流'],
      'food': '신탕위 / 酸汤鱼',
      'foodDesc': '구이저우 전통 신탕위, 상큼하고 매콤한 맛 / 贵州传统酸汤鱼，酸辣开胃',
      'tip': '여름(6-8월) 우기에 폭포가 가장 웅장합니다 / 夏季(6-8月)雨季瀑布最为壮观',
    },
    {
      'name': '시강 천호 묘족 마을 / 西江千户苗寨',
      'nameZh': 'Xijiang Miao Village',
      'rating': '4.7',
      'coverUrl': 'https://thf.bing.com/th/id/R.0efcb4d8d4bda8009aa20c77f7045808?rik=L0F05xgIQ%2f65Ow&riu=http%3a%2f%2fimages.xjqhmz.com%2fimage%2f2023%2f04%2f28%2f1651775923013394433.jpg&ehk=ZMXTA2%2b6DFpdNMu39HJfAdDVYgesIH%2fD%2frQMljI2dcM%3d&risl=&pid=ImgRaw&r=0',
      'description':
          '시장(西江) 천호 묘족 마을은 세계 최대의 묘족 집락으로, 1000여 채의 전통 고가식 건물이 산비탈에 늘어서 있습니다. '
          '야경이 특히 아름답습니다.\n\n'
          '西江千户苗寨是世界上最大的苗族聚居地，上千栋传统吊脚楼依山而建，夜景尤为迷人。',
      'highlights': ['고가식 건물 / 吊脚楼', '묘족 의상 체험 / 苗族服饰体验', '장대 주점 / 长桌宴', '야경 전망대 / 观景台夜景'],
      'food': '장대 주점 요리 / 长桌宴',
      'foodDesc': '묘족의 전통 연회, 쌀술과 오색 밥 / 苗族传统宴席，米酒和五彩饭',
      'tip': '음력 3월의 ‘자매절’ 방문 추천 / 推荐农历三月“姊妹节”前往',
    },
    {
      'name': '룽지 계단식 논 / 龙脊梯田',
      'nameZh': 'Longji Rice Terraces',
      'rating': '4.8',
      'coverUrl': 'https://thf.bing.com/th/id/R.b93424f22fe09c0679da1fae58eacb56?rik=NuWHRNPKiffvkg&riu=http%3a%2f%2fwp.longjitour.com%2fwp-content%2fuploads%2f2020%2f01%2f2020010201503217.jpg&ehk=1W0IdSzEYfwaHrBTiN4xgxzZ%2b1e52%2bV6fTR%2fJ1sJAN0%3d&risl=&pid=ImgRaw&r=0',
      'description':
          '룽지(龙脊) 계단식 논은 구이저우 성의 장족 지구에 위치하며, '
          '봄철 물을 댄 논은 거울처럼 반사되고 가을에는 황금빛 물결이 아름답습니다.\n\n'
          '龙脊梯田位于贵州的壮族地区，春季灌水如镜面，秋季金黄一片。',
      'highlights': ['봄 물 반사 / 春季水镜', '가을 황금빛 / 秋收金黄', '운해 / 云海景观', '장족 민속촌 / 壮族村落'],
      'food': '죽통밥 / 竹筒饭',
      'foodDesc': '대나무 통에 찹쌀과 고기를 넣어 구운 음식 / 竹筒内放入糯米和肉烤制',
      'tip': '9-10월 추수철이 가장 아름답습니다 / 9-10月丰收季节最美',
    },
  ];

  static const List<Map<String, String>> _foodList = [
    {'emoji': '🍲', 'name': '신탕위 / 酸汤鱼', 'desc': '구이저우 대표 요리, 시큼하고 매콤한 국물 / 贵州代表菜，酸辣开胃', 'spot': '황과수 / 黄果树', 'bg': 'red'},
    {'emoji': '🍚', 'name': '오색 찹쌀밥 / 五彩糯米饭', 'desc': '묘족 축제 음식, 천연 색소 물들임 / 苗族节日美食，天然染色', 'spot': '시강 / 西江', 'bg': 'purple'},
    {'emoji': '🥩', 'name': '라오궈 / 烙锅', 'desc': '철판 구이 요리, 향기롭고 매콤 / 铁板烧烤，香气扑鼻', 'spot': '룽지 / 龙脊', 'bg': 'orange'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F7F4),
      body: CustomScrollView(
        slivers: [
          _buildAppBar('구이저우 / 贵州', 'https://images.pexels.com/photos/4101555/pexels-photo-4101555.jpeg?auto=compress&cs=tinysrgb&w=1200'),
          SliverToBoxAdapter(child: _IntroCard(
            title: '고향 지역 소개 / 家乡地区介绍',
            content: '구이저우(贵州)는 중국 남서부에 위치한 성으로, 다민족 문화와 카르스트 지형, 폭포로 유명합니다. '
                '인구 약 3600만 명, ‘세계의 보석상’이라 불립니다.\n\n'
                '贵州位于中国西南部，以多民族文化、喀斯特地貌和瀑布闻名。人口约3600万，被誉为“世界宝石之库”。',
            stats: const [
              {'icon': Icons.people, 'value': '3600만', 'label': '인구 / 人口', 'color': Color(0xFF1A6B4A)},
              {'icon': Icons.landscape, 'value': '92.5%', 'label': '산지 비율 / 山地占比', 'color': Color(0xFF3A7BD5)},
              {'icon': Icons.celebration, 'value': '49개', 'label': '민족 / 民族数', 'color': Color(0xFFE07B39)},
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
            ['황과수 폭포 / 黄果树瀑布', '톈싱차오 / 天星桥', '두삭팅 / 陡坡塘'],
            ['시강 천호 묘족 마을 / 西江千户苗寨', '랑더 고진 / 郎德古镇', '카이리 민속 박물관 / 凯里民俗博物馆'],
            ['룽지 계단식 논 / 龙脊梯田', '핑안 마을 / 平安壮寨', '황뤄 야오족 마을 / 黄洛瑶寨'],
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

// -------------- 通用组件 --------------
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