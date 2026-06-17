import 'package:http/http.dart' as http;
import 'dart:convert';

class AIService {
  static String generateMockTip(String hometownName) {
    return 'AI小助手：来$hometownName旅游，推荐清晨逛早市，避开高峰！品尝当地特色美食，体验地道文化。';
  }

  static Future<String> getRealAIRecommendation(String hometownName) async {
    try {
      // 模拟网络请求（可替换为真实API，如免费Gemini）
      await Future.delayed(const Duration(seconds: 1));
      return generateMockTip(hometownName);
    } catch (e) {
      return generateMockTip(hometownName);
    }
  }
}