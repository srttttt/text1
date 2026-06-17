import '../models/hometown.dart';

List<Hometown> allHometowns = [
  // 1. 贵州
  Hometown(
    nameZh: '贵州 · 贵阳', nameKo: '구이저우 · 구이양',
    introZh: '贵阳，贵州省省会，中国避暑之都。喀斯特地貌遍布，民族风情浓郁，酸辣美食闻名天下。',
    introKo: '구이양은 구이저우성의 성도로, 중국의 여름 피서 도시입니다. 카르스트 지형이 발달하고 민족 풍습이 풍부하며 매콤새콤한 음식으로 유명합니다.',
    attractions: [
      Attraction(nameZh: '黔灵山公园', nameKo: '첸링산 공원', descZh: '城市中的天然氧吧，可看野生猕猴', descKo: '도심 속 천연 산소 공간, 야생 원숭이 관찰 가능', imageUrl: 'https://picsum.photos/400/300?random=1'),
      Attraction(nameZh: '青岩古镇', nameKo: '칭옌 고진', descZh: '明代军事重镇，卤猪脚和玫瑰糖出名', descKo: '명나라 시대 군사 요새, 족발과 장미사탕으로 유명', imageUrl: 'https://picsum.photos/400/300?random=2'),
    ],
    foods: [
      Food(nameZh: '酸汤鱼', nameKo: '신탕위', descZh: '苗族传统美食，酸辣开胃', descKo: '먀오족 전통 요리, 시큼하고 매콤한 맛', imageUrl: 'https://picsum.photos/400/300?random=3'),
      Food(nameZh: '花溪牛肉粉', nameKo: '화시 쇠고기 국수', descZh: '汤鲜肉嫩，米粉爽滑', descKo: '진한 국물과 부드러운 고기, 쫄깃한 쌀국수', imageUrl: 'https://picsum.photos/400/300?random=4'),
    ],
    routes: [
      TravelRoute(titleZh: '市区休闲一日游', titleKo: '시내 휴식 1일 코스', descZh: '黔灵山公园 → 甲秀楼 → 二七路小吃街', descKo: '첸링산 공원 → 지아슈러우 → 얼치루 먹자골목'),
      TravelRoute(titleZh: '古镇文化之旅', titleKo: '고진 문화 탐방', descZh: '青岩古镇 → 花溪湿地公园 → 夜郎谷', descKo: '칭옌 고진 → 화시 습지공원 → 옐랑 골짜기'),
    ],
    heroImage: 'https://picsum.photos/800/400?random=5',
  ),
  // 2. 苏州
  Hometown(
    nameZh: '苏州', nameKo: '쑤저우',
    introZh: '苏州，江南水乡代表，以古典园林和大运河闻名。素有"人间天堂"之称，丝绸和评弹文化悠久。',
    introKo: '쑤저우는 강남 수향의 대표 도시로, 고전 정원과 대운하로 유명합니다. "지상낙원"으로 불리며 비단과 평탄 문화가 깊습니다.',
    attractions: [
      Attraction(nameZh: '拙政园', nameKo: '작정원', descZh: '中国四大名园之一，世界文化遗产', descKo: '중국 4대 명원 중 하나, 유네스코 세계문화유산', imageUrl: 'https://picsum.photos/400/300?random=6'),
      Attraction(nameZh: '平江路', nameKo: '핑장루', descZh: '保留完整的河街并行历史街区', descKo: '하천과 거리가 나란히 있는 완전 보존된 역사 지구', imageUrl: 'https://picsum.photos/400/300?random=7'),
    ],
    foods: [
      Food(nameZh: '松鼠鳜鱼', nameKo: '쑹수구이위', descZh: '酸甜酥脆，造型如松鼠', descKo: '새콤달콤 바삭하고 다람쥐 모양', imageUrl: 'https://picsum.photos/400/300?random=8'),
      Food(nameZh: '苏式汤面', nameKo: '쑤저우식 국수', descZh: '汤清面滑，浇头丰富', descKo: '맑은 국물과 부드러운 면, 다양한 토핑', imageUrl: 'https://picsum.photos/400/300?random=9'),
    ],
    routes: [
      TravelRoute(titleZh: '园林水乡一日', titleKo: '정원과 수향 1일', descZh: '拙政园 → 苏州博物馆 → 平江路 → 山塘街', descKo: '작정원 → 쑤저우 박물관 → 핑장루 → 산탕제'),
      TravelRoute(titleZh: '运河文化之旅', titleKo: '대운하 문화 탐방', descZh: '盘门 → 古运河游船 → 虎丘', descKo: '판먼 → 고대 운하 유람선 → 후추'),
    ],
    heroImage: 'https://picsum.photos/800/400?random=10',
  ),
  // 3. 杭州 · 路线专题
  Hometown(
    nameZh: '杭州 · 经典路线', nameKo: '항저우 · 클래식 루트',
    introZh: '杭州，浙江省省会，西湖文化景观世界闻名。本页面侧重规划高效、深度的旅行路线。',
    introKo: '항저우는 저장성 성도로, 서호 문화 경관이 세계적으로 유명합니다. 이 페이지는 효율적이고 깊이 있는 여행 루트를 중점적으로 소개합니다.',
    attractions: [
      Attraction(nameZh: '西湖', nameKo: '서호', descZh: '推荐环湖骑行或电瓶车，十大景点错峰游览', descKo: '호수 주변 자전거 or 전기차 추천, 피크 시간대 피해 10대 명소 관람', imageUrl: 'https://picsum.photos/400/300?random=11'),
      Attraction(nameZh: '西溪湿地', nameKo: '시시 습지', descZh: '非诚勿扰取景地，乘船穿行水巷', descKo: '영화 촬영지, 배를 타고 물길 탐험', imageUrl: 'https://picsum.photos/400/300?random=12'),
    ],
    foods: [
      Food(nameZh: '片儿川', nameKo: '피엔얼촨', descZh: '杭州特色面，雪菜笋片肉丝，建议早餐吃', descKo: '항저우 대표 국수, 절임채소·죽순·고기, 아침 식사 추천', imageUrl: 'https://picsum.photos/400/300?random=13'),
      Food(nameZh: '葱包桧', nameKo: '총바오후이', descZh: '街头小吃，压烤的油条裹着甜面酱', descKo: '길거리 간식, 눌러 구운 유탸오에 달콤한 된장', imageUrl: 'https://picsum.photos/400/300?random=14'),
    ],
    routes: [
      TravelRoute(titleZh: '【路线专家推荐】西湖全景一日', titleKo: '【루트 전문가 추천】 서호 전경 1일', descZh: '断桥 → 白堤 → 平湖秋月 → 苏堤春晓 → 花港观鱼 → 雷峰塔夜景', descKo: '단교 → 바이디 → 핑후추위에 → 쑤디춘샤오 → 화강관위 → 뢰펑탑 야경'),
      TravelRoute(titleZh: '小众清新路线', titleKo: '숨은 명소 신선 루트', descZh: '茅家埠 → 乌龟潭 → 浴鹄湾 → 龙井村', descKo: '마오자부 → 우구이탄 → 위후완 → 룽징촌'),
    ],
    heroImage: 'https://picsum.photos/800/400?random=15',
  ),
  // 4. 杭州 · 美食专题
  Hometown(
    nameZh: '杭州 · 寻味美食', nameKo: '항저우 · 미식 탐방',
    introZh: '杭州不仅景美，更是美食天堂。本页面聚焦杭帮菜、老字号和街头巷尾的舌尖体验。',
    introKo: '항저우는 경치뿐 아니라 미식 천국입니다. 이 페이지는 항방요리, 전통 노포, 길거리 음식에 초점을 맞춥니다.',
    attractions: [
      Attraction(nameZh: '河坊街 & 高银街', nameKo: '허팡지에 & 가오인지에', descZh: '美食聚集地，老字号和网红店林立', descKo: '맛집 밀집 지역, 전통 노포와 인기 맛집 즐비', imageUrl: 'https://picsum.photos/400/300?random=16'),
      Attraction(nameZh: '龙井村', nameKo: '룽징촌', descZh: '品尝正宗龙井茶，配茶点', descKo: '정통 룽징차와 다과 함께 즐기기', imageUrl: 'https://picsum.photos/400/300?random=17'),
    ],
    foods: [
      Food(nameZh: '【必吃】西湖醋鱼', nameKo: '【필수】서호초어', descZh: '西湖楼外楼、山外山最正宗', descKo: '서호 러우와이러우, 산와이산이 가장 정통', imageUrl: 'https://picsum.photos/400/300?random=18'),
      Food(nameZh: '【必吃】东坡肉', nameKo: '【필수】동파육', descZh: '皮糯肉酥，配荷叶饼解腻', descKo: '부드러운 피와 살, 연잎 전병과 함께', imageUrl: 'https://picsum.photos/400/300?random=19'),
      Food(nameZh: '龙井虾仁', nameKo: '룽징새우볶음', descZh: '茶香虾嫩，推荐绿茶餐厅', descKo: '차 향과 부드러운 새우, 루차 레스토랑 추천', imageUrl: 'https://picsum.photos/400/300?random=20'),
    ],
    routes: [
      TravelRoute(titleZh: '【美食家路线】老字号巡礼', titleKo: '【미식가 루트】전통 노포 투어', descZh: '早餐奎元馆虾爆鳝面 → 午餐楼外楼西湖醋鱼 → 下午茶龙井茶室 → 晚餐外婆家茶香鸡', descKo: '아침 쿠위엔관 샤바오샨몐 → 점심 러우와이러우 서호초어 → 오후 차 룽징 차실 → 저녁 와이포지아 차향 치킨'),
      TravelRoute(titleZh: '夜市小吃路线', titleKo: '야시장 길거리 음식 루트', descZh: '河坊街 → 南宋御街 → 吴山夜市（定胜糕、葱包桧、臭豆腐）', descKo: '허팡지에 → 남송 어제 → 우산 야시장(딩성가오, 총바오후이, 취두부)'),
    ],
    heroImage: 'https://picsum.photos/800/400?random=21',
  ),
];