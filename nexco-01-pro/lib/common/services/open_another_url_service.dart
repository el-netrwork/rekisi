
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class OpenAnotherUrlService {
  static const String googleMapApp = "https://www.google.com";

  static Future<void> openUrl(String url)async{
    if(!await launchUrlString(url)){
      throw Exception('Could not launch $url');
    }
  }

  // 目的地を表示する。
  static Future<void> openGoogleMap(String latitude, String longitude) async {
    final url = Uri.parse(
        '$googleMapApp/maps/dir/?api=1&destination=$latitude,$longitude');

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  static Future<void> openEmail() async {
    final title = Uri.encodeComponent('スタンプラリーアプリのフィードバック');
    final body = Uri.encodeComponent('以下にフィードバックの記載をお願いいたします。');
    const mailAddress = 'jinja-shi@jinja-net.jp'; //メールアドレス

    final url = 'mailto:$mailAddress?subject=$title&body=$body';
    if (!await launchUrlString(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
