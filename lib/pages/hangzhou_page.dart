import 'package:flutter/material.dart';

// ============================================================
//  颜色常量（湖蓝 · 杭州全景主题）
// ============================================================
const Color _primaryColor = Color(0xFF1A7A8A);   // 湖蓝
const Color _accentColor = Color(0xFFD4A84B);    // 金色
const Color _lightBgColor = Color(0xFFF0F7FA);
const Color _darkTextColor = Color(0xFF1A2A3A);

// ============================================================
//  主页面
// ============================================================
class HangzhouPage extends StatelessWidget {
  const HangzhouPage({super.key});

  // 杭州经典景点
  static const List<Map<String, dynamic>> attractions = [
    {
      'name': '서호 / 西湖',
      'nameZh': 'West Lake',
      'rating': '4.9',
      'coverUrl': 'https://cdn.pixabay.com/photo/2020/12/14/21/32/west-lake-5832103_1280.jpg',
      'description':
          '서호는 항저우 서쪽에 위치한 담수호로, 2011년 유네스코 세계문화유산에 등재되었습니다.\n\n'
          '西湖位于杭州西部，2011年被列入联合国教科文组织世界文化遗产。',
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
          '영은사는 동진 시대(326년)에 창건된 강남 최대 불교 사원입니다.\n\n'
          '灵隐寺创建于东晋时期，是江南最大的佛教寺院。',
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
          '송성은 남송 시대 문화를 재현한 대형 테마파크입니다.\n\n'
          '宋城是再现南宋文化的大型主题公园。',
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
          '서계 습지는 중국 최초의 국가 습지공원입니다.\n\n'
          '西溪湿地是中国第一个国家湿地公园。',
      'highlights': ['갈대밭 / 芦苇荡', '매화섬 / 梅花岛', '작은 배 체험 / 摇橹船体验'],
      'food': '농가 요리 / 农家菜',
      'foodDesc': '습지 내 수상 레스토랑의 신선한 민물 요리 / 湿地内水上餐厅新鲜河鲜',
      'tip': '11월 갈대 시즌이 가장 아름답습니다 / 11月芦苇季节最美',
    },
  ];

  // 美食列表（精简，作为景点附带的点缀）
  static const List<Map<String, String>> _foodList = [
    {
      'name': '西湖醋鱼',
      'nameKo': '서호초어',
      'desc': '서호 근처 전통 식당 대표 요리 / 西湖边餐厅代表菜',
      'spot': '서호 / 西湖',
      'bg': 'teal',
      'imageUrl': 'https://tse1.mm.bing.net/th/id/OIP.vtn9k0dCw9dwXrNTE2fVZwHaE8?rs=1&pid=ImgDetMain',
    },
    {
      'name': '东坡肉',
      'nameKo': '동파육',
      'desc': '송성 전통 식당, 소동파가 즐겨먹던 요리 / 宋城传统餐厅',
      'spot': '송성 / 宋城',
      'bg': 'red',
      'imageUrl': 'https://tse2.mm.bing.net/th/id/OIP.w2nSy9azfZ2MczcM1bozXQHaE8?rs=1&pid=ImgDetMain',
    },
    {
      'name': '龙井虾仁',
      'nameKo': '룽징새우',
      'desc': '룽징차와 새우의 조합 명물 / 龙井茶与虾仁的经典搭配',
      'spot': '서호 / 西湖',
      'bg': 'orange',
      'imageUrl': 'https://tse3.mm.bing.net/th/id/OIP.evzSKfpnzmpqhsWvUGh7-gHaE8?rs=1&pid=ImgDetMain',
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
                '항저우 파노라마 / 杭州全景',
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
                    'https://thf.bing.com/th/id/R.17b13dabedf3612be20ce643bdd36973?rik=wR9nHAhK01ly%2fQ&riu=http%3a%2f%2fimg.pconline.com.cn%2fimages%2fupload%2fupc%2ftx%2fphotoblog%2f1208%2f24%2fc5%2f13180459_13180459_1345797688052.jpg&ehk=bQ%2b8S%2b%2bbvuV%2bKerPzQMA%2fUoSAzBhIK63EMjKarMPaio%3d&risl=&pid=ImgRaw&r=0',
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
                          '杭州 · 人间天堂',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            shadows: [Shadow(blurRadius: 12, color: Colors.black38)],
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '서호 · 영은사 · 송성 · 서계습지 | 西湖 · 灵隐 · 宋城 · 西溪',
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
                  const Divider(height: 1, color: Color(0xFFE0E8EE)),
                  const SizedBox(height: 14),
                  Text(
                    '항저우는 중국 저장성 성도로 인구 약 1300만 명의 역사 도시입니다. '
                    '서호는 유네스코 세계문화유산으로 항저우의 상징입니다.\n\n'
                    '杭州是浙江省省会，人口约1300万，西湖是联合国教科文组织世界文化遗产，是杭州的象征。',
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
                        icon: Icons.people, value: '1300만', label: '인구 / 人口', color: Color(0xFF1A7A8A),
                      )),
                      SizedBox(width: 8),
                      Expanded(child: _StatChip(
                        icon: Icons.history, value: '2200년', label: '역사 / 历史', color: Color(0xFF3A7BD5),
                      )),
                      SizedBox(width: 8),
                      Expanded(child: _StatChip(
                        icon: Icons.public, value: '1곳', label: '세계유산 / 世界遗产', color: Color(0xFFD4A84B),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // ---- 经典景点打卡（替代名菜网格，突出景点） ----
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
                        child: const Icon(Icons.landscape, color: _accentColor, size: 22),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        '杭州 대표 명소 / 杭州代表景点',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: _darkTextColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  const Divider(height: 1, color: Color(0xFFE0E8EE)),
                  const SizedBox(height: 14),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      final spot = attractions[index];
                      return Container(
                        decoration: BoxDecoration(
                          color: _primaryColor.withOpacity(0.04),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: _primaryColor.withOpacity(0.1)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              _getSpotIcon(index),
                              color: _primaryColor,
                              size: 28,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              spot['name'].toString().split(' / ')[0],
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: _darkTextColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              spot['rating'].toString(),
                              style: const TextStyle(
                                fontSize: 10,
                                color: Color(0xFFFFC107),
                              ),
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
                  _RouteDay(day: '1일차 / 第一天', stops: ['서호 / 西湖', '뇌봉탑 / 雷峰塔', '하방가 / 河坊街']),
                  SizedBox(height: 14),
                  Divider(height: 1, color: Color(0xFFE0E8EE)),
                  SizedBox(height: 14),
                  _RouteDay(day: '2일차 / 第二天', stops: ['영은사 / 灵隐寺', '서계 습지 / 西溪湿地', '룽징촌 / 龙井村']),
                  SizedBox(height: 14),
                  Divider(height: 1, color: Color(0xFFE0E8EE)),
                  SizedBox(height: 14),
                  _RouteDay(day: '3일차 / 第三天', stops: ['송성 / 宋城', '첸탕강 / 钱塘江', '알리바바 캠퍼스 / 阿里巴巴园区']),
                ],
              ),
            ),
          ),

          // ---- 美食标题（精简，作为点缀） ----
          _buildSectionHeader('경관별 추천 음식 / 景点相关美食', _accentColor, Icons.restaurant),

          // ---- 美食卡片 ----
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
  IconData _getSpotIcon(int index) {
    const icons = [
      Icons.waves,
      Icons.temple_buddhist,
      Icons.theater_comedy,
      Icons.forest,
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
//  美食卡片（带图片，精简版）
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
                    color: Color(0xFF1A2A3A),
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
    if (name.contains('醋鱼') || name.contains('서호초어')) return Icons.set_meal;
    if (name.contains('东坡肉') || name.contains('동파육')) return Icons.restaurant;
    if (name.contains('虾仁') || name.contains('새우')) return Icons.food_bank;
    return Icons.restaurant;
  }

  Color _foodBgColor(String? bg) {
    switch (bg) {
      case 'red': return const Color(0xFFFFEBEB);
      case 'orange': return const Color(0xFFFFF3E0);
      case 'teal': return const Color(0xFFE0F7FA);
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