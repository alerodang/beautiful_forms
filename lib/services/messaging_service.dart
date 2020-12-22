import 'dart:io';
import 'package:beautiful_forms/model/phone.dart';
import 'package:url_launcher/url_launcher.dart';

class MessageService {
  static void launchWhatsApp(Phone phone, String message) async {
    String url() {
      if (Platform.isIOS) {
        return "whatsapp://wa.me/${phone.formatted()}/?text=${Uri.parse(message)}";
      } else {
        return "whatsapp://send?phone=${phone.formatted()}&text=${Uri.parse(message)}";
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

  static void launchEmail(String email, String subject) async {
    String url = "mailto:$email?subject=$subject";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
