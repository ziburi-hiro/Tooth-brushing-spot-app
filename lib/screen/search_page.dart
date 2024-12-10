import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/constants/color.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {

    final TextEditingController searchController = TextEditingController();
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('検索', style: GoogleFonts.mochiyPopOne(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: mainColor,
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search), // アイコンを設定
                hintText: '近くのスポット', // ヒントテキストを表示
                border: OutlineInputBorder(), // 外枠を追加
              ),
            ),
          ),

          Container(
            width: screenSize.width*0.95,
            height: screenSize.height*0.15,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenSize.width*0.3,
                  height: screenSize.height*0.12,
                  color: Colors.grey,
                  child: const Center(child: Text('Image')),
                ),
                
                Container(
                  width: screenSize.width*0.6,
                  height: screenSize.height*0.12,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('場所の名前'),
                      Text('営業時間'),
                      Text('歯ブラシの残数'),
                      Text('現在地からの距離'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30,),

          Container(
            width: screenSize.width*0.95,
            height: screenSize.height*0.15,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenSize.width*0.3,
                  height: screenSize.height*0.12,
                  color: Colors.grey,
                  child: const Center(child: Text('Image')),
                ),

                Container(
                  width: screenSize.width*0.6,
                  height: screenSize.height*0.12,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('場所の名前'),
                      Text('営業時間'),
                      Text('歯ブラシの残数'),
                      Text('現在地からの距離'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30,),

          Container(
            width: screenSize.width*0.95,
            height: screenSize.height*0.15,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenSize.width*0.3,
                  height: screenSize.height*0.12,
                  color: Colors.grey,
                  child: const Center(child: Text('Image')),
                ),

                Container(
                  width: screenSize.width*0.6,
                  height: screenSize.height*0.12,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('場所の名前'),
                      Text('営業時間'),
                      Text('歯ブラシの残数'),
                      Text('現在地からの距離'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

