class Attraction {
  final String nameZh;
  final String nameKo;
  final String descZh;
  final String descKo;
  final String imageUrl;
  Attraction({
    required this.nameZh,
    required this.nameKo,
    required this.descZh,
    required this.descKo,
    required this.imageUrl,
  });
}

class Food {
  final String nameZh;
  final String nameKo;
  final String descZh;
  final String descKo;
  final String imageUrl;
  Food({
    required this.nameZh,
    required this.nameKo,
    required this.descZh,
    required this.descKo,
    required this.imageUrl,
  });
}

class TravelRoute {
  final String titleZh;
  final String titleKo;
  final String descZh;
  final String descKo;
  TravelRoute({
    required this.titleZh,
    required this.titleKo,
    required this.descZh,
    required this.descKo,
  });
}

class Hometown {
  final String nameZh;
  final String nameKo;
  final String introZh;
  final String introKo;
  final List<Attraction> attractions;
  final List<Food> foods;
  final List<TravelRoute> routes;
  final String heroImage;
  Hometown({
    required this.nameZh,
    required this.nameKo,
    required this.introZh,
    required this.introKo,
    required this.attractions,
    required this.foods,
    required this.routes,
    required this.heroImage,
  });
}