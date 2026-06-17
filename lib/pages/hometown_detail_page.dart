import 'package:flutter/material.dart';
import '../models/hometown.dart';
import '../services/ai_service.dart';

class HometownDetailPage extends StatefulWidget {
  final Hometown hometown;
  const HometownDetailPage({super.key, required this.hometown});

  @override
  State<HometownDetailPage> createState() => _HometownDetailPageState();
}

class _HometownDetailPageState extends State<HometownDetailPage> {
  String _aiTipZh = '点击下方按钮，获取AI旅行建议';
  String _aiTipKo = '아래 버튼을 눌러 AI 여행 추천을 받으세요';
  bool _loadingAI = false;

  Future<void> _callAI() async {
    setState(() => _loadingAI = true);
    final tip = await AIService.getRealAIRecommendation(widget.hometown.nameZh);
    setState(() {
      _aiTipZh = tip;
      _aiTipKo = 'AI 추천: $tip';
      _loadingAI = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final h = widget.hometown;
    return Scaffold(
      appBar: AppBar(title: Text('${h.nameZh} / ${h.nameKo}')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(h.heroImage, height: 200, width: double.infinity, fit: BoxFit.cover),
            ),
            const SizedBox(height: 20),
            Text('📌 家乡介绍 / 지역 소개', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('${h.introZh}\n\n${h.introKo}'),
            const SizedBox(height: 20),
            Text('🏞️ 代表景点 / 대표 관광지', style: Theme.of(context).textTheme.titleLarge),
            ...h.attractions.map((a) => Card(
              child: ListTile(
                title: Text('${a.nameZh} / ${a.nameKo}', style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('${a.descZh}\n${a.descKo}'),
                onTap: () => _showImageDialog(context, a.imageUrl, '${a.nameZh} / ${a.nameKo}'),
              ),
            )),
            const SizedBox(height: 20),
            Text('🍜 代表美食 / 대표 음식', style: Theme.of(context).textTheme.titleLarge),
            ...h.foods.map((f) => Card(
              child: ListTile(
                title: Text('${f.nameZh} / ${f.nameKo}', style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('${f.descZh}\n${f.descKo}'),
                onTap: () => _showImageDialog(context, f.imageUrl, '${f.nameZh} / ${f.nameKo}'),
              ),
            )),
            const SizedBox(height: 20),
            Text('🗺️ 推荐旅行路线 / 추천 여행 코스', style: Theme.of(context).textTheme.titleLarge),
            ...h.routes.map((r) => Card(
              child: ListTile(
                title: Text('${r.titleZh} / ${r.titleKo}', style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('${r.descZh}\n${r.descKo}'),
              ),
            )),
            const SizedBox(height: 20),
            Text('🤖 AI 智能推荐 / AI 추천', style: Theme.of(context).textTheme.titleLarge),
            Card(
              color: Colors.blue.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _loadingAI ? const CircularProgressIndicator() : Column(
                      children: [
                        Text(_aiTipZh),
                        const SizedBox(height: 8),
                        Text(_aiTipKo, style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      onPressed: _callAI,
                      icon: const Icon(Icons.auto_awesome),
                      label: const Text('获取AI旅行建议 / AI 추천 받기'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showImageDialog(BuildContext context, String imageUrl, String title) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(padding: const EdgeInsets.all(8), child: Text(title)),
            Image.network(imageUrl, height: 300, fit: BoxFit.cover),
            TextButton(onPressed: () => Navigator.pop(context), child: const Text('关闭 / 닫기')),
          ],
        ),
      ),
    );
  }
}