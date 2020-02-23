import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


class ImageListState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ImageListState();
  }

}


class _ImageListState extends State<ImageListState>{
  // 여러 랜덤 영어단어를 저장할 List 를 만들어 줌.
  final List<WordPair> _randomWordList = <WordPair>[];

  // Set은 List와 비슷한데 똑같은(동일한 값의) 오브젝트가 Set 값의 안에 들어갈 수 없음.
  final Set<WordPair> _savedWord = Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final randomEnglishWord = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        if (index.isOdd){
          return Divider();
        }
        // realIndex = index를 2로 나눈 몫
        var realIndex = index ~/2;

        if (realIndex >= _randomWordList.length){
          _randomWordList.addAll(generateWordPairs().take(10));
        }

        return ListTile(
          title: Text(
          _randomWordList[realIndex].asPascalCase,
          textScaleFactor: 2,
        ),
          trailing: Icon(
            Icons.tag_faces,
            color: Colors.blue,
          ),
          onTap: (){
            Scaffold.of(context).showSnackBar(new SnackBar(
              content: new Text(
              _randomWordList[realIndex].asPascalCase,
              textScaleFactor: 2,
            ),
            duration: Duration(milliseconds: 1000),
            ));
          },
        );
      })
    );
  }

}