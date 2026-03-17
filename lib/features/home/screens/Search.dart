import 'package:flutter/material.dart';
import 'package:trendify/core/theme/app_colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Row(
                children: [
                  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.grey100
                      ),
                      child: TextField(),
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
