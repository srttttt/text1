import 'package:flutter/material.dart';

// ============================================================
//  颜色常量（全局）
// ============================================================
const Color _primaryColor = Color(0xFFC67A3A);
const Color _accentColor = Color(0xFFE8A75A);
const Color _lightBgColor = Color(0xFFFDF8F3);
const Color _darkTextColor = Color(0xFF4A3520);

// ============================================================
//  主页面
// ============================================================
class HangzhouFoodPage extends StatelessWidget {
  const HangzhouFoodPage({super.key});

  static const List<Map<String, String>> famousDishes = [
    {'name': '西湖醋鱼', 'nameKo': '서호초어', 'desc': '酸甜鲜嫩，杭帮菜之首', 'descKo': '새콤달콤하고 부드러운 식감, 항저우 요리의 으뜸'},
    {'name': '东坡肉', 'nameKo': '동파육', 'desc': '肥而不腻，软糯香甜', 'descKo': '느끼하지 않고 부드러우며 달콤함'},
    {'name': '龙井虾仁', 'nameKo': '룽징새우', 'desc': '茶香虾嫩，清雅脱俗', 'descKo': '차향과 부드러운 새우, 우아한 맛'},
    {'name': '宋嫂鱼羹', 'nameKo': '송쇠어갱', 'desc': '鲜滑爽口，南宋名菜', 'descKo': '부드럽고 시원한 식감, 남송 시대 명요리'},
    {'name': '叫花鸡', 'nameKo': '교화계', 'desc': '荷叶包裹，香气四溢', 'descKo': '연잎에 싸서 굽고 향기 가득'},
    {'name': '葱包桧', 'nameKo': '총바오후이', 'desc': '街头经典，酥脆可口', 'descKo': '길거리 대표 간식, 바삭하고 맛있음'},
  ];

  static const List<Map<String, dynamic>> attractions = [
    {
      'name': '하방가 / 河坊街',
      'nameZh': 'Hefang Street',
      'rating': '4.8',
      'coverUrl': 'https://thf.bing.com/th/id/R.e3dc322287adf92fe907847ca0fde6c1?rik=X%2fOSMntCY2sp9Q&riu=http%3a%2f%2fk.sinaimg.cn%2fn%2fsinakd20200528ac%2f295%2fw1124h771%2f20200528%2f465b-iufmpmn7220301.jpg%2fw700d1q75cms.jpg%3fby%3dcms_fixed_width&ehk=InN%2bPOEVgvmDRrlLib1EKvg1bqWfST3S4GlUtiH1lGE%3d&risl=&pid=ImgRaw&r=0',
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
      'coverUrl': 'https://youimg1.c-ctrip.com/target/100o190000017bjnm3D4F.jpg',
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
      'coverUrl': 'https://thf.bing.com/th/id/R.91def3c662453b12e6e201e3b5323695?rik=WHMw0vSI%2b2TZoA&riu=http%3a%2f%2fzj.news.cn%2f2023-03%2f14%2f1129431304_16787816308111n.png&ehk=hjBtz99VBdb5Ruwunvf6SQtvCDYZssSZVlimI%2bLQGjk%3d&risl=&pid=ImgRaw&r=0',
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
    {
      'name': '西湖醋鱼',
      'nameKo': '서호초어',
      'desc': '누와이라우 대표 요리 / 楼外楼招牌菜',
      'spot': '누와이라우 / 楼外楼',
      'bg': 'red',
      'imageUrl': 'https://thf.bing.com/th/id/R.ce816b7830b57988540f904c1b194eba?rik=cLu57jgzi%2fuTyw&riu=http%3a%2f%2fn.sinaimg.cn%2fsinacn10117%2f113%2fw1024h689%2f20190914%2f3283-iepyyhi5761195.jpg&ehk=Wq2DuvT2CzEvoHIYotZU8Ifsr%2bOHsgMYxD%2bLTNs33c0%3d&risl=&pid=ImgRaw&r=0',
    },
    {
      'name': '东坡肉',
      'nameKo': '동파육',
      'desc': '소동파가 즐긴 돼지고기 조림 / 苏东坡喜爱的红烧肉',
      'spot': '누와이라우 / 楼外楼',
      'bg': 'orange',
      'imageUrl': 'https://tse3.mm.bing.net/th/id/OIP.NSpTLqOKhwUW0M_VqsJahgHaE7?r=0&cb=thfc1falcon2&rs=1&pid=ImgDetMain&o=7&rm=3',
    },
    {
      'name': '龙井虾仁',
      'nameKo': '룽징새우',
      'desc': '룽징차 향이 나는 새우 요리 / 带有龙井茶香的虾仁',
      'spot': '룽징촌 / 龙井村',
      'bg': 'green',
      'imageUrl': 'https://thf.bing.com/th/id/R.e1013af9d54898c34eb064bf966395e8?rik=S%2brCLPa08piSaA&riu=http%3a%2f%2fpic.ntimg.cn%2ffile%2f20151007%2f9885883_224102203000_2.jpg&ehk=fPmA0LCvowXpUEC88LLOAj06TSEc4r3sQfwg%2bCTHNvg%3d&risl=&pid=ImgRaw&r=0',
    },
    {
      'name': '定胜糕',
      'nameKo': '정승고',
      'desc': '하방가 전통 찹쌀 떡 / 河坊街传统糯米糕',
      'spot': '하방가 / 河坊街',
      'bg': 'purple',
      'imageUrl': 'https://tse1.mm.bing.net/th/id/OIP.IdVoZqDuCI_txmJHyh7wYAHaE7?r=0&cb=thfc1falcon2&rs=1&pid=ImgDetMain&o=7&rm=3',
    },
    {
      'name': '宋嫂鱼羹',
      'nameKo': '송쇠어갱',
      'desc': '누와이라우 전통 수프 / 楼外楼传统鱼羹',
      'spot': '누와이라우 / 楼外楼',
      'bg': 'blue',
      'imageUrl': 'https://thf.bing.com/th/id/R.2beb39788b9acea01ecce5aa0915dd09?rik=D2OXIphaPVnfPw&riu=http%3a%2f%2fn.sinaimg.cn%2fsinacn08%2f192%2fw1024h768%2f20180523%2f990e-hawmauc2587077.jpg&ehk=hi4QKjwCFm%2f5LRkPFidLL8akP5j%2fmL9jjxJXmOgeqnY%3d&risl=&pid=ImgRaw&r=0',
    },
    {
      'name': '葱包桧',
      'nameKo': '총바오후이',
      'desc': '하방가 길거리 간식 / 河坊街街头小吃',
      'spot': '하방가 / 河坊街',
      'bg': 'pink',
      'imageUrl': 'https://thf.bing.com/th/id/R.89ddf2cea08c6c65bc45fe03a415fae4?rik=cVhUiZJJYtShhA&riu=http%3a%2f%2fn.sinaimg.cn%2fsinacn%2fw460h348%2f20171201%2f92ab-fypikwt2100866.jpg&ehk=jEOTkJauObKwXSh26l3agZNWTnTAPCzvyw20Qf%2bK8Rg%3d&risl=&pid=ImgRaw&r=0',
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
                '항저우 미식 / 杭州美食',
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
                    'https://img95.699pic.com/photo/40160/5888.jpg_wh860.jpg',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      color: _primaryColor,
                      child: const Icon(Icons.restaurant, color: Colors.white70, size: 80),
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
                          '舌尖上的杭州',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            shadows: [Shadow(blurRadius: 12, color: Colors.black38)],
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '미식의 도시, 항저우를 맛보다  |  杭帮菜 · 龙井茶 · 老字号',
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
                        child: const Icon(Icons.restaurant_menu, color: _primaryColor, size: 22),
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
                  const Divider(height: 1, color: Color(0xFFF0E8E0)),
                  const SizedBox(height: 14),
                  Text(
                    '항저우(杭州)는 중국 저장성 성도로, 서호 문화와 맛있는 항저우 요리로 유명합니다. '
                    '항저우 요리는 담백하고 신선하며, 계절 재료를 중시합니다.\n\n'
                    '杭州是浙江省省会，以西湖文化和美味的杭帮菜闻名。杭帮菜清淡鲜美，注重时令食材。',
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
                        icon: Icons.restaurant, value: '200+', label: '노포 / 老字号', color: Color(0xFFC67A3A),
                      )),
                      SizedBox(width: 8),
                      Expanded(child: _StatChip(
                        icon: Icons.eco, value: '3대', label: '명차 / 名茶', color: Color(0xFF4A8A5A),
                      )),
                      SizedBox(width: 8),
                      Expanded(child: _StatChip(
                        icon: Icons.star, value: '8대', label: '명요리 / 名菜', color: Color(0xFF3A7BD5),
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
                        '항저우 대표 요리 / 杭州代表美食',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: _darkTextColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  const Divider(height: 1, color: Color(0xFFF0E8E0)),
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

          // ---- 美食打卡点标题 ----
          _buildSectionHeader('음식 명소 / 美食打卡点', _primaryColor, Icons.location_on),

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

          // ---- 美食路线标题 ----
          _buildSectionHeader('추천 미식 투어 / 推荐美食路线', _accentColor, Icons.route),

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
                  _RouteDay(day: '1일차 / 第一天', stops: ['하방가 / 河坊街 (정승고, 총바오후이)', '우산 야시장 / 吴山夜市 (소고기 버미엘)']),
                  SizedBox(height: 14),
                  Divider(height: 1, color: Color(0xFFF0E8E0)),
                  SizedBox(height: 14),
                  _RouteDay(day: '2일차 / 第二天', stops: ['누와이라우 / 楼外楼 (서호초어, 동파육)', '취웬관 / 奎元馆 (새우튀김 우동)']),
                  SizedBox(height: 14),
                  Divider(height: 1, color: Color(0xFFF0E8E0)),
                  SizedBox(height: 14),
                  _RouteDay(day: '3일차 / 第三天', stops: ['룽징촌 / 龙井村 (룽징새우, 차)', '메이자우 / 梅家坞 (농가 요리)']),
                ],
              ),
            ),
          ),

          // ---- 相关美食标题 ----
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
                    color: Color(0xFF4A3520),
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
    if (name.contains('定胜糕') || name.contains('정승고')) return Icons.cake;
    if (name.contains('鱼羹') || name.contains('어갱')) return Icons.soup_kitchen;
    if (name.contains('葱包桧') || name.contains('총바오후이')) return Icons.lunch_dining;
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