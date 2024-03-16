import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

enum Language{
  english(name: 'English',code: 'en'),
  hindi(name: 'हिंदी',code: 'hi'),
  punjabi(name: 'ਪੰਜਾਬੀ',code: 'pa');
  
  const Language({required this.name,required this.code});
  final String name;
  final String code;
}

final languageProvider= StateProvider<Language>((ref)=>Language.english);