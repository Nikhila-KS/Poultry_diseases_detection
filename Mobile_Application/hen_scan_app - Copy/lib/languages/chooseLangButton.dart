import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hen_scan/languages/languages.dart';

class LanguagePopUpMenu extends ConsumerWidget{
  const LanguagePopUpMenu({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref){
    final lang=ref.watch(languageProvider);
    return PopupMenuButton<Language>(
      onSelected: (value)=>ref.read(languageProvider.notifier).update((_)=>value),
      itemBuilder: (context)=>[
        for(var value in Language.values)
        PopupMenuItem(
          value: value,
          child: Text(value.name),
        )
      ],
      child:Row(
        children: [
          Icon(Icons.language,color: Theme.of(context).primaryColorDark,),
          Text(' ${lang.name}',style: TextStyle(color: Theme.of(context).primaryColorDark,),),
        ],
      ),
      );
  }
}