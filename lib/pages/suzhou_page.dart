import 'package:flutter/material.dart';

// ============================================================
//  颜色常量（黛蓝 · 苏州水墨主题）
// ============================================================
const Color _primaryColor = Color(0xFF2C4A7A);   // 黛蓝
const Color _accentColor = Color(0xFF8A9BA8);    // 暖灰
const Color _lightBgColor = Color(0xFFF4F6F8);
const Color _darkTextColor = Color(0xFF1A2A3A);

// ============================================================
//  主页面
// ============================================================
class SuzhouPage extends StatelessWidget {
  const SuzhouPage({super.key});

  // 名菜推荐
  static const List<Map<String, String>> famousDishes = [
    {'name': '松鼠鳜鱼', 'nameKo': '쑹수구이위', 'desc': '酸甜酥脆，造型如松鼠', 'descKo': '새콤달콤 바삭, 다람쥐 모양'},
    {'name': '苏式汤面', 'nameKo': '쑤저우 탕몐', 'desc': '汤清面滑，浇头丰富', 'descKo': '맑은 국물과 부드러운 면, 다양한 토핑'},
    {'name': '酱汁肉', 'nameKo': '장쯔러우', 'desc': '咸香浓郁，苏州酱肉', 'descKo': '짭짤하고 진한 맛, 쑤저우식 조림 고기'},
    {'name': '桂花糕', 'nameKo': '계화고', 'desc': '桂花飘香，软糯香甜', 'descKo': '계화향 가득, 부드럽고 달콤함'},
    {'name': '蟹粉小笼', 'nameKo': '샤오룽바오', 'desc': '蟹肉鲜美，汤汁饱满', 'descKo': '게살이 신선하고 육즙 가득'},
    {'name': '糖粥', 'nameKo': '탕조우', 'desc': '红豆糯米，甜蜜暖心', 'descKo': '팥과 찹쌀로 만든 달콤한 죽'},
  ];

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
      'coverUrl': 'https://tse2.mm.bing.net/th/id/OIP.2_X3RM7uKWqki22dHW0kMQHaFj?r=0&cb=thfc1falcon2&rs=1&pid=ImgDetMain&o=7&rm=3',
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
      'coverUrl': 'https://k.sinaimg.cn/n/sinakd20241206s/287/w640h447/20241206/2302-296f3a6d5511cb7a070a724fef0b2547.jpg/w700d1q75cms.jpg?by=cms_fixed_width',
      'description':
          '후추(虎丘)는 쑤저우의 상징 중 하나로, “동쪽에 도착해 호구를 보지 않으면 왔다고 할 수 없다”는 말이 있습니다.\n\n'
          '虎丘是苏州的象征之一，有“到苏州不游虎丘，乃憾事也”的说法。',
      'highlights': ['운암사탑 / 云岩寺塔', '검지 / 剑池', '절단량 / 断梁殿', '만경산장 / 万景山庄'],
      'food': '자사육 / 酱汁肉',
      'foodDesc': '쑤저우식 고기 조림, 진한 간장 맛 / 苏州酱肉，咸香浓郁',
      'tip': '가을 단풍 시즌이 특히 아름답습니다 / 秋季红叶季节尤美',
    },
  ];

  // 美食列表（带图片链接，去掉 emoji）
  static const List<Map<String, String>> _foodList = [
    {
      'name': '松鼠鳜鱼',
      'nameKo': '쑹수구이위',
      'desc': '졸정원 근처 전통 식당 대표 요리 / 拙政园附近餐厅代表菜',
      'spot': '졸정원 / 拙政园',
      'bg': 'orange',
      'imageUrl': 'https://pic.nximg.cn/file/20140911/9885883_225337670000_2.jpg',
    },
    {
      'name': '苏式汤面',
      'nameKo': '쑤저우 탕몐',
      'desc': '핑장루 골목의 노포 국수 / 平江路巷子里的老面馆',
      'spot': '핑장루 / 平江路',
      'bg': 'blue',
      'imageUrl': 'https://thf.bing.com/th/id/R.267137784a12c134fe5b07dfc0004473?rik=3FlTradk0qsTlg&riu=http%3a%2f%2fn.sinaimg.cn%2fsinacn10114%2f178%2fw640h338%2f20191225%2ff752-imfiehp9815577.jpg&ehk=iz3EHXLd85A%2bLqyT5RQglqlBYtp1EwDXE8yu9S6A1GU%3d&risl=&pid=ImgRaw&r=0',
    },
    {
      'name': '酱汁肉',
      'nameKo': '장쯔러우',
      'desc': '후추 입구 전통 노포 / 虎丘入口传统老店',
      'spot': '후추 / 虎丘',
      'bg': 'red',
      'imageUrl': 'https://tse2.mm.bing.net/th/id/OIP.xuX5c3wQcxRH2g6k17NrLwHaHN?r=0&cb=thfc1falcon2&rs=1&pid=ImgDetMain&o=7&rm=3',
    },
    {
      'name': '桂花糕',
      'nameKo': '계화고',
      'desc': '쑤저우 전통 간식, 계화향 가득 / 苏州传统点心，桂花飘香',
      'spot': '핑장루 / 平江路',
      'bg': 'purple',
      'imageUrl': 'https://pic.nximg.cn/file/20230111/31924045_150823777107_2.jpg',
    },
    {
      'name': '蟹粉小笼包',
      'nameKo': '샤오룽바오',
      'desc': '게살이 신선하고 육즙이 가득한 소룡포 / 蟹肉鲜美，汤汁饱满',
      'spot': '졸정원 / 拙政园',
      'bg': 'pink',
      'imageUrl': 'https://tse1.mm.bing.net/th/id/OIP.C6jAhKqiWsMHJxp0vw8Z6gHaEJ?r=0&cb=thfc1falcon2&rs=1&pid=ImgDetMain&o=7&rm=3',
    },
    {
      'name': '糖粥',
      'nameKo': '탕조우',
      'desc': '팥과 찹쌀로 만든 달콤한 죽 / 红豆糯米，甜蜜暖心',
      'spot': '산탕제 / 山塘街',
      'bg': 'green',
      'imageUrl': 'https://thf.bing.com/th/id/OIP.6SuMk3R4lqvPqqKHTqmgSQHaFP?r=0&o=7&cb=thfc1falcon2rm=3&rs=1&pid=ImgDetMain&o=7&rm=3',
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
                '쑤저우 / 苏州',
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
                    'https://images.pexels.com/photos/1294645/pexels-photo-1294645.jpeg?auto=compress&cs=tinysrgb&w=1200',
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
                          '上有天堂，下有苏杭',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            shadows: [Shadow(blurRadius: 12, color: Colors.black38)],
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '고전 정원 · 물의 도시 · 문화의 보고',
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
                  const Divider(height: 1, color: Color(0xFFE0E8E8)),
                  const SizedBox(height: 14),
                  Text(
                    '쑤저우(苏州)는 중국 장쑤성 남동부에 위치한 역사 문화 도시로, 정원과 운하로 유명합니다. '
                    '“천국 위에, 쑤저우와 항저우 아래”라는 말이 있습니다.\n\n'
                    '苏州位于中国江苏省东南部，以古典园林和大运河闻名，素有“上有天堂，下有苏杭”之美誉。',
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
                        icon: Icons.people, value: '1200만', label: '인구 / 人口', color: Color(0xFF2C4A7A),
                      )),
                      SizedBox(width: 8),
                      Expanded(child: _StatChip(
                        icon: Icons.history, value: '2500년', label: '역사 / 历史', color: Color(0xFF3A7BD5),
                      )),
                      SizedBox(width: 8),
                      Expanded(child: _StatChip(
                        icon: Icons.park, value: '69개', label: '정원 / 园林数', color: Color(0xFF8A9BA8),
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
                        '쑤저우 대표 요리 / 苏州代表美食',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: _darkTextColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  const Divider(height: 1, color: Color(0xFFE0E8E8)),
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
                  _RouteDay(day: '1일차 / 第一天', stops: ['졸정원 / 拙政园', '쑤저우 박물관 / 苏州博物馆', '핑장루 / 平江路']),
                  SizedBox(height: 14),
                  Divider(height: 1, color: Color(0xFFE0E8E8)),
                  SizedBox(height: 14),
                  _RouteDay(day: '2일차 / 第二天', stops: ['후추 / 虎丘', '산탕제 / 山塘街', '쑤저우 운하 유람 / 苏州运河游船']),
                  SizedBox(height: 14),
                  Divider(height: 1, color: Color(0xFFE0E8E8)),
                  SizedBox(height: 14),
                  _RouteDay(day: '3일차 / 第三天', stops: ['동산 / 东山', '시산 / 西山', '타이후 호수 / 太湖']),
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
    if (name.contains('松鼠鳜鱼') || name.contains('쑹수구이위')) return Icons.set_meal;
    if (name.contains('汤面') || name.contains('탕몐')) return Icons.soup_kitchen;
    if (name.contains('酱汁肉') || name.contains('장쯔러우')) return Icons.restaurant;
    if (name.contains('桂花糕') || name.contains('계화고')) return Icons.cake;
    if (name.contains('小笼包') || name.contains('샤오룽바오')) return Icons.lunch_dining;
    if (name.contains('糖粥') || name.contains('탕조우')) return Icons.food_bank;
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