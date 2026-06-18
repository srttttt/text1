import 'package:flutter/material.dart';

// ============================================================
//  颜色常量（翡翠绿 · 贵州自然主题）
// ============================================================
const Color _primaryColor = Color(0xFF0D7A5A);   // 翡翠绿
const Color _accentColor = Color(0xFFD4875E);    // 土橙
const Color _lightBgColor = Color(0xFFF0F7F4);
const Color _darkTextColor = Color(0xFF2C3A2A);

// ============================================================
//  主页面
// ============================================================
class GuizhouPage extends StatelessWidget {
  const GuizhouPage({super.key});

  // 名菜推荐（特色美食）
  static const List<Map<String, String>> famousDishes = [
    {'name': '酸汤鱼', 'nameKo': '신탕위', 'desc': '酸辣开胃，贵州代表', 'descKo': '새콤매콤, 구이저우 대표 요리'},
    {'name': '烙锅', 'nameKo': '라오궈', 'desc': '铁板烧烤，香气扑鼻', 'descKo': '철판 구이, 향기 가득'},
    {'name': '五彩糯米饭', 'nameKo': '오색 찹쌀밥', 'desc': '天然染色，民族风味', 'descKo': '천연 염색, 민족 풍미'},
    {'name': '竹筒饭', 'nameKo': '죽통밥', 'desc': '竹筒烤制，糯米飘香', 'descKo': '대나무 통에 구운 찹쌀'},
    {'name': '丝娃娃', 'nameKo': '쓰와와', 'desc': '薄饼卷菜，清爽可口', 'descKo': '얇은 전병에 채소 싸먹음'},
    {'name': '肠旺面', 'nameKo': '창왕몐', 'desc': '血旺面条，麻辣鲜香', 'descKo': '선지와 국수, 얼얼한 맛'},
  ];

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

  // 美食列表（带图片链接，去掉 emoji）
  static const List<Map<String, String>> _foodList = [
    {
      'name': '酸汤鱼',
      'nameKo': '신탕위',
      'desc': '구이저우 대표 요리, 시큼하고 매콤한 국물 / 贵州代表菜，酸辣开胃',
      'spot': '황과수 / 黄果树',
      'bg': 'red',
      'imageUrl': 'https://tse2.mm.bing.net/th/id/OIP.cqcEYqQDEL6T55nAYwJ2PQHaLH?r=0&cb=thfc1falcon2&rs=1&pid=ImgDetMain&o=7&rm=3',
    },
    {
      'name': '五彩糯米饭',
      'nameKo': '오색 찹쌀밥',
      'desc': '묘족 축제 음식, 천연 색소 물들임 / 苗族节日美食，天然染色',
      'spot': '시강 / 西江',
      'bg': 'purple',
      'imageUrl': 'https://thf.bing.com/th/id/R.816c628e23356a241bf2a79f18b8abf4?rik=Jh5NJpNfkgaskQ&riu=http%3a%2f%2fcp1.douguo.net%2fupload%2fcaiku%2fe%2fb%2fb%2fyuan_eb49a83696eef44854d53300369405db.jpeg&ehk=57BygCQZPue9%2ffLoBhaaCO72gMRMZKngGjg9Z%2bOvZoA%3d&risl=&pid=ImgRaw&r=0',
    },
    {
      'name': '烙锅',
      'nameKo': '라오궈',
      'desc': '철판 구이 요리, 향기롭고 매콤 / 铁板烧烤，香气扑鼻',
      'spot': '룽지 / 龙脊',
      'bg': 'orange',
      'imageUrl': 'https://n.sinaimg.cn/sinacn20110/384/w2048h1536/20191006/04cd-ifmectm7139527.jpg',
    },
    {
      'name': '竹筒饭',
      'nameKo': '죽통밥',
      'desc': '대나무 통에 찹쌀과 고기를 넣어 구운 음식 / 竹筒内放入糯米和肉烤制',
      'spot': '룽지 / 龙脊',
      'bg': 'green',
      'imageUrl': 'https://pic.nximg.cn/file/20210825/9452397_202857868100_2.jpg',
    },
    {
      'name': '丝娃娃',
      'nameKo': '쓰와와',
      'desc': '얇은 전병에 채소와 소스를 싸먹는 맛 / 薄饼卷蔬菜和酱料',
      'spot': '귀양 / 贵阳',
      'bg': 'blue',
      'imageUrl': 'https://tse1.mm.bing.net/th/id/OIP.a5EQS5I361N_2ZHYelIuawHaE8?r=0&cb=thfc1falcon2&rs=1&pid=ImgDetMain&o=7&rm=3',
    },
    {
      'name': '肠旺面',
      'nameKo': '창왕몐',
      'desc': '선지와 국수, 얼얼한 매운맛의 향토 면 / 血旺面条，麻辣鲜香',
      'spot': '귀양 / 贵阳',
      'bg': 'pink',
      'imageUrl': 'https://pic.nximg.cn/file/20220901/4797286_224407638109_2.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _lightBgColor,
      body: CustomScrollView(
        slivers: [
          // ---- AppBar ----
          SliverAppBar(
            expandedHeight: 340,
            pinned: true,
            backgroundColor: _primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                '구이저우 / 贵州',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  shadows: [Shadow(blurRadius: 8, color: Colors.black26)],
                ),
              ),
              centerTitle: true,
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://images.pexels.com/photos/4101555/pexels-photo-4101555.jpeg?auto=compress&cs=tinysrgb&w=1200',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      color: _primaryColor,
                      child: const Icon(Icons.landscape, color: Colors.white70, size: 80),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          _primaryColor.withOpacity(0.4),
                          _primaryColor.withOpacity(0.85),
                        ],
                        stops: const [0.0, 0.3, 0.6, 1.0],
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '醉美贵州',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            shadows: [Shadow(blurRadius: 12, color: Colors.black38)],
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '카르스트 지형 · 다민족 문화 · 신선한 자연',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            shadows: [Shadow(blurRadius: 8, color: Colors.black38)],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ---- 介绍卡片 ----
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: _primaryColor.withOpacity(0.1),
                    blurRadius: 20,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: _primaryColor.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(Icons.location_city, color: _primaryColor, size: 22),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        '고향 지역 소개 / 家乡地区介绍',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: _darkTextColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  const Divider(height: 1, color: Color(0xFFE0E8E0)),
                  const SizedBox(height: 14),
                  Text(
                    '구이저우(贵州)는 중국 남서부에 위치한 성으로, 다민족 문화와 카르스트 지형, 폭포로 유명합니다. '
                    '인구 약 3600만 명, ‘세계의 보석상’이라 불립니다.\n\n'
                    '贵州位于中国西南部，以多民族文化、喀斯特地貌和瀑布闻名。人口约3600万，被誉为“世界宝石之库”。',
                    style: TextStyle(
                      fontSize: 13,
                      height: 1.8,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: const [
                      Expanded(child: _StatChip(
                        icon: Icons.people, value: '3600만', label: '인구 / 人口', color: Color(0xFF0D7A5A),
                      )),
                      SizedBox(width: 8),
                      Expanded(child: _StatChip(
                        icon: Icons.landscape, value: '92.5%', label: '산지 비율 / 山地占比', color: Color(0xFF3A7BD5),
                      )),
                      SizedBox(width: 8),
                      Expanded(child: _StatChip(
                        icon: Icons.celebration, value: '49개', label: '민족 / 民族数', color: Color(0xFFD4875E),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // ---- 名菜推荐网格 ----
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: _accentColor.withOpacity(0.15),
                    blurRadius: 16,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: _accentColor.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(Icons.food_bank, color: _accentColor, size: 22),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        '구이저우 대표 요리 / 贵州代表美食',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: _darkTextColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  const Divider(height: 1, color: Color(0xFFE0E8E0)),
                  const SizedBox(height: 14),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1.2,
                    ),
                    itemCount: famousDishes.length,
                    itemBuilder: (context, index) {
                      final dish = famousDishes[index];
                      return Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: _primaryColor.withOpacity(0.04),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: _primaryColor.withOpacity(0.1)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(_getFoodIcon(index), color: _primaryColor, size: 26),
                            const SizedBox(height: 6),
                            Text(
                              dish['name']!,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: _darkTextColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              dish['nameKo']!,
                              style: const TextStyle(fontSize: 10, color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              dish['desc']!,
                              style: const TextStyle(fontSize: 9, color: Colors.grey),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          // ---- 景点标题 ----
          _buildSectionHeader('대표 관광지 / 代表旅游景点', _primaryColor, Icons.landscape),

          // ---- 景点卡片 ----
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _AttractionCard(
                  attraction: attractions[index],
                  primaryColor: _primaryColor,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AttractionDetailPage(attraction: attractions[index])),
                  ),
                ),
                childCount: attractions.length,
              ),
            ),
          ),

          // ---- 路线标题 ----
          _buildSectionHeader('추천 여행 코스 / 推荐旅行路线', _accentColor, Icons.route),

          // ---- 路线卡片 ----
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: _accentColor.withOpacity(0.15),
                    blurRadius: 16,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  _RouteDay(day: '1일차 / 第一天', stops: ['황과수 폭포 / 黄果树瀑布', '톈싱차오 / 天星桥', '두삭팅 / 陡坡塘']),
                  SizedBox(height: 14),
                  Divider(height: 1, color: Color(0xFFE0E8E0)),
                  SizedBox(height: 14),
                  _RouteDay(day: '2일차 / 第二天', stops: ['시강 천호 묘족 마을 / 西江千户苗寨', '랑더 고진 / 郎德古镇', '카이리 민속 박물관 / 凯里民俗博物馆']),
                  SizedBox(height: 14),
                  Divider(height: 1, color: Color(0xFFE0E8E0)),
                  SizedBox(height: 14),
                  _RouteDay(day: '3일차 / 第三天', stops: ['룽지 계단식 논 / 龙脊梯田', '핑안 마을 / 平安壮寨', '황뤄 야오족 마을 / 黄洛瑶寨']),
                ],
              ),
            ),
          ),

          // ---- 美食标题 ----
          _buildSectionHeader('경관별 추천 음식 / 景点相关美食', _accentColor, Icons.restaurant),

          // ---- 美食卡片（带图片） ----
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 30),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _FoodCard(
                  food: _foodList[index],
                  primaryColor: _primaryColor,
                ),
                childCount: _foodList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ---- 辅助函数 ----
  IconData _getFoodIcon(int index) {
    const icons = [
      Icons.set_meal,
      Icons.restaurant,
      Icons.food_bank,
      Icons.soup_kitchen,
      Icons.kitchen,
      Icons.lunch_dining,
    ];
    return icons[index % icons.length];
  }

  SliverToBoxAdapter _buildSectionHeader(String title, Color color, IconData icon) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
        child: Row(
          children: [
            Container(
              width: 5,
              height: 24,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(width: 12),
            Icon(icon, color: color, size: 20),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: color,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
//  统计卡片
// ============================================================
class _StatChip extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color color;

  const _StatChip({
    required this.icon,
    required this.value,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 10, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// ============================================================
//  景点卡片
// ============================================================
class _AttractionCard extends StatelessWidget {
  final Map<String, dynamic> attraction;
  final VoidCallback onTap;
  final Color primaryColor;

  const _AttractionCard({
    required this.attraction,
    required this.onTap,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              child: Stack(
                children: [
                  Image.network(
                    attraction['coverUrl'],
                    height: 190,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      height: 190,
                      color: Colors.grey[200],
                      child: const Icon(Icons.broken_image, size: 60),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black.withOpacity(0.3)],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.star, color: Color(0xFFFFC107), size: 14),
                          const SizedBox(width: 4),
                          Text(
                            attraction['rating'],
                            style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              attraction['name'],
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1A1A1A),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              attraction['nameZh'],
                              style: const TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [primaryColor, primaryColor.withOpacity(0.7)],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          children: [
                            Text('详情', style: TextStyle(color: Colors.white, fontSize: 11)),
                            SizedBox(width: 4),
                            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    (attraction['description'] as String).split('\n\n')[0],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 13, color: Color(0xFF666666), height: 1.5),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: (attraction['highlights'] as List<String>).map((h) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: primaryColor.withOpacity(0.2)),
                      ),
                      child: Text(
                        h,
                        style: TextStyle(fontSize: 11, color: primaryColor, fontWeight: FontWeight.w500),
                      ),
                    )).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
//  路线日卡片
// ============================================================
class _RouteDay extends StatelessWidget {
  final String day;
  final List<String> stops;

  const _RouteDay({required this.day, required this.stops});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [_primaryColor, _accentColor],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            day,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(stops.length, (i) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  Icon(
                    i == stops.length - 1 ? Icons.flag : Icons.arrow_forward,
                    size: 14,
                    color: _primaryColor,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      stops[i],
                      style: const TextStyle(fontSize: 13, color: Color(0xFF444444)),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ),
      ],
    );
  }
}

// ============================================================
//  美食卡片（带图片）
// ============================================================
class _FoodCard extends StatelessWidget {
  final Map<String, String> food;
  final Color primaryColor;

  const _FoodCard({required this.food, required this.primaryColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.network(
              food['imageUrl']!,
              width: 52,
              height: 52,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: _foodBgColor(food['bg']!),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                    child: Icon(
                      _getIconForFood(food['name']!),
                      color: primaryColor,
                      size: 28,
                    ),
                  ),
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: _foodBgColor(food['bg']!),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${food['name']} / ${food['nameKo']}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2C3A2A),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  food['desc']!,
                  style: const TextStyle(fontSize: 12, color: Color(0xFF888888)),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.08),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              food['spot']!,
              style: TextStyle(fontSize: 10, color: primaryColor, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  IconData _getIconForFood(String name) {
    if (name.contains('酸汤鱼') || name.contains('신탕위')) return Icons.set_meal;
    if (name.contains('烙锅') || name.contains('라오궈')) return Icons.restaurant;
    if (name.contains('糯米饭') || name.contains('찹쌀밥')) return Icons.food_bank;
    if (name.contains('竹筒饭') || name.contains('죽통밥')) return Icons.soup_kitchen;
    if (name.contains('丝娃娃') || name.contains('쓰와와')) return Icons.kitchen;
    if (name.contains('肠旺面') || name.contains('창왕몐')) return Icons.lunch_dining;
    return Icons.restaurant;
  }

  Color _foodBgColor(String? bg) {
    switch (bg) {
      case 'red': return const Color(0xFFFFEBEB);
      case 'purple': return const Color(0xFFF3E5F5);
      case 'orange': return const Color(0xFFFFF3E0);
      case 'green': return const Color(0xFFE8F5E9);
      case 'blue': return const Color(0xFFE3F0FF);
      case 'pink': return const Color(0xFFFCE4EC);
      default: return const Color(0xFFF5F5F5);
    }
  }
}

// ============================================================
//  景点详情页
// ============================================================
class AttractionDetailPage extends StatelessWidget {
  final Map<String, dynamic> attraction;

  const AttractionDetailPage({
    super.key,
    required this.attraction,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _lightBgColor,
      appBar: AppBar(
        title: Text(attraction['name']),
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                attraction['coverUrl'],
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  height: 220,
                  color: Colors.grey[200],
                  child: const Icon(Icons.broken_image, size: 60),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              attraction['name'],
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A1A1A),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              attraction['nameZh'],
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            Text(
              attraction['description'],
              style: const TextStyle(fontSize: 14, height: 1.8, color: Color(0xFF444444)),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: _primaryColor.withOpacity(0.06),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: _primaryColor.withOpacity(0.15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.restaurant, color: _primaryColor, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        attraction['food'],
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: _darkTextColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    attraction['foodDesc'],
                    style: const TextStyle(fontSize: 13, color: Color(0xFF666666)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const Icon(Icons.lightbulb_outline, color: Color(0xFFF9A825)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      attraction['tip'],
                      style: const TextStyle(fontSize: 13, color: Color(0xFF555555)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}