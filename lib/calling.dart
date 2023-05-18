import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatelessWidget {
  Future<void> _launchPhone() async {
    const phoneNumber = 'tel://7217370990';
    try {
      if (await canLaunch(phoneNumber)) {
        await UrlLauncher.launchUrl(Uri.parse(phoneNumber));
      } else {
        throw 'Could not launch $phoneNumber';
      }
    } catch (e) {
      print('Error launching phone: $e');
    }
  }

  Future<void> _launchEmail() async {
    const emailAddress = 'mailto:test@example.com';
    try {
      if (await canLaunch(emailAddress)) {
        await UrlLauncher.launchUrl(Uri.parse(emailAddress));
      } else {
        throw 'Could not launch $emailAddress';
      }
    } catch (e) {
      print('Error launching email: $e');
    }
  }

  Future<void> _launchWhatsApp() async {
    const whatsappNumber = 'whatsapp://send?phone=+917217370990';
    try {
      if (await canLaunch(whatsappNumber)) {
        await UrlLauncher.launchUrl(Uri.parse(whatsappNumber));
      } else {
        throw 'Could not launch $whatsappNumber';
      }
    } catch (e) {
      print('Error launching WhatsApp: $e');
    }
  }

  Future<void> _launchSms() async {
    const sms = 'sms:7217370990';
    try {
      if (await canLaunch(sms)) {
        await UrlLauncher.launchUrl(Uri.parse(sms));
      } else {
        throw 'Could not launch $sms';
      }
    } catch (e) {
      print('Error launching SMS: $e');
    }
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Call'),
                onTap: () async {
                  await _launchPhone();
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                onTap: () async {
                  await _launchEmail();
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text('WhatsApp'),
                onTap: () async {
                  await _launchWhatsApp();
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.sms),
                title: Text('SMS'),
                onTap: () async {
                  await _launchSms();
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Launcher'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open Bottom Sheet'),
          onPressed: () {
            _showBottomSheet(context);
          },
        ),
      ),
    );
  }
}