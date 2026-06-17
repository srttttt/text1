import 'package:flutter/material.dart';

// ================= 统计卡片 =================
class StatChip extends StatelessWidget {
  final IconData icon; final String value; final String label; final Color color;
  const StatChip({super.key, required this.icon, required this.value, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(height: 4),
        Text(value, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: color)),
        Text(label, style: const TextStyle(fontSize: 10, color: Colors.grey)),
      ]),
    );
  }
}

// ================= 景点卡片 =================
class AttractionCard extends StatelessWidget {
  final Map<String, dynamic> attraction; final VoidCallback onTap;
  const AttractionCard({super.key, required this.attraction, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 16, offset: const Offset(0, 4))],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.network(
              attraction['coverUrl'],
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(height: 180, color: Colors.grey[200], child: const Icon(Icons.broken_image, size: 60)),
            ),
          ),
          Padding(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(attraction['name'], style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xFF1A1A1A))),
                Row(children: [
                  Text(attraction['nameZh'], style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  const SizedBox(width: 8),
                  const Icon(Icons.star, color: Color(0xFFFFC107), size: 14),
                  Text(attraction['rating'], style: const TextStyle(fontSize: 12, color: Color(0xFFFFC107), fontWeight: FontWeight.w600)),
                ]),
              ]),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Color(0xFF1A6B4A), Color(0xFF2D8B6A)]),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(children: [
                  Text('상세보기 / 详情', style: TextStyle(color: Colors.white, fontSize: 11)),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 10),
                ]),
              ),
            ]),
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
                  color: const Color(0xFFE8F5EE),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFFB2DFCE)),
                ),
                child: Text(h, style: const TextStyle(fontSize: 11, color: Color(0xFF1A6B4A), fontWeight: FontWeight.w500)),
              )).toList(),
            ),
          ])),
        ]),
      ),
    );
  }
}

// ================= 路线卡片 =================
class RouteCard extends StatelessWidget {
  final List<List<String>> routes;
  const RouteCard({super.key, required this.routes});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 16, offset: const Offset(0, 4))],
      ),
      child: Column(
        children: List.generate(routes.length, (i) => Column(children: [
          _RouteDay(day: '${i+1}일차 / 第${i+1}天', stops: routes[i]),
          if (i != routes.length-1) const SizedBox(height: 14),
          if (i != routes.length-1) const Divider(height: 1),
        ])),
      ),
    );
  }
}

class _RouteDay extends StatelessWidget {
  final String day; final List<String> stops;
  const _RouteDay({required this.day, required this.stops});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [Color(0xFF3A7BD5), Color(0xFF5A9BD5)]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(day, style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold)),
      ),
      const SizedBox(width: 14),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: List.generate(stops.length, (i) => Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Row(children: [
          Icon(i == stops.length-1 ? Icons.flag : Icons.arrow_forward, size: 14, color: const Color(0xFF3A7BD5)),
          const SizedBox(width: 8),
          Expanded(child: Text(stops[i], style: const TextStyle(fontSize: 13, color: Color(0xFF333333)))),
        ]),
      )))),
    ]);
  }
}

// ================= 美食卡片 =================
class FoodCard extends StatelessWidget {
  final Map<String, String> food;
  const FoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8, offset: const Offset(0, 2))],
      ),
      child: Row(children: [
        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            color: _foodBgColor(food['bg']!),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(child: Text(food['emoji']!, style: const TextStyle(fontSize: 28))),
        ),
        const SizedBox(width: 14),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(food['name']!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF5A3A1A))),
          const SizedBox(height: 2),
          Text(food['desc']!, style: const TextStyle(fontSize: 12, color: Color(0xFF666666))),
        ])),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xFFE8F5EE),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(food['spot']!, style: const TextStyle(fontSize: 10, color: Color(0xFF1A6B4A), fontWeight: FontWeight.w500)),
        ),
      ]),
    );
  }

  Color _foodBgColor(String? bg) {
    switch(bg) {
      case 'red': return const Color(0xFFFFEBEB);
      case 'purple': return const Color(0xFFF3E5F5);
      case 'orange': return const Color(0xFFFFF3E0);
      case 'green': return const Color(0xFFE8F5E9);
      case 'blue': return const Color(0xFFE3F0FF);
      case 'teal': return const Color(0xFFE0F7FA);
      default: return const Color(0xFFF5F5F5);
    }
  }
}

// ================= 介绍卡片 =================
class IntroCard extends StatelessWidget {
  final String title; final String content; final List<Map<String, dynamic>> stats;
  const IntroCard({super.key, required this.title, required this.content, required this.stats});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 16, offset: const Offset(0, 4))],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Color(0xFF1A6B4A), Color(0xFF2D8B6A)]),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.location_city, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 12),
          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1A6B4A))),
        ]),
        const SizedBox(height: 14),
        const Divider(height: 1),
        const SizedBox(height: 14),
        Text(content, style: const TextStyle(fontSize: 13, height: 1.8, color: Color(0xFF444444))),
        const SizedBox(height: 18),
        Row(children: stats.map((stat) => Expanded(child: StatChip(
          icon: stat['icon'], value: stat['value'], label: stat['label'], color: stat['color']
        ))).toList()),
      ]),
    );
  }
}