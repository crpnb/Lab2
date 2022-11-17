import 'package:get/get.dart';
import 'package:mid_autumn_bobing/config/config.dart';

import 'chat_scroll_behavior.dart';
import 'chat_scroll_physics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  bool _isLoading = false;
  List<Map<String, dynamic>> _chatRecords = [];

  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(scrollListener);
    _focusNode.addListener(textFocusListener);
    for (int i = 0; i < 2; i++) {
      _chatRecords.addAll([
        {
          "host": i % 2 == 0 ? false : true,
          "name": i % 2 == 0 ? "卢羿" : "GTX",
          "content": i % 2 == 0 ? "大家快来玩博饼！！" : "好好玩！！"
        },
      ]);
    }
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      if (_scrollController.position.maxScrollExtent == 0) {
        // not scroll content, call load more
        if (_isLoading) return;
        _isLoading = true;
        onLoadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Color(0xFFF3F3F3),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ScrollConfiguration(
              behavior: ChatScrollBehavior(),
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 10),
                itemBuilder: (ctx, index) {
                  return index == _chatRecords.length
                      ? Center(
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: CircularProgressIndicator(
                              strokeWidth: 3,
                            ),
                          ),
                        )
                      : chatItemWidget(index);
                },
                controller: _scrollController,
                physics:
                    ChatScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                reverse: true,
                itemCount: _chatRecords.length + 1,
              ),
            ),
          ),
          editMessageWidget(),
        ],
      ),
    );
  }

  Widget chatItemWidget(int index) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        _chatRecords[index]['host']
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        _chatRecords[index]['name'],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFF8EBC48),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.centerRight,
                        child: Text(
                          _chatRecords[index]['content'],
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _chatRecords[index]['host']
                          ? Colors.green
                          : Colors.blue,
                    ),
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      _chatRecords[index]['name'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      _chatRecords[index]['name'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _chatRecords[index]['name'],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.centerRight,
                        child: Text(
                          _chatRecords[index]['content'],
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
      ],
    );
  }

  Widget editMessageWidget() {
    return Container(
        height: 120,
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
        color: Bcolors.ThemeColor,
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    focusNode: _focusNode,
                    controller: _textEditingController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding: EdgeInsets.all(5),
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true,
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      //
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Material(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                  child: InkWell(
                    onTap: onSendMessage,
                    child: Container(
                        height: 30,
                        width: 50,
                        alignment: Alignment.center,
                        child: Text(
                          "send",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                Get.toNamed(Broute.dice_page);
              },
              iconSize: 40,
              icon: Icon(
                Icons.code,
                color: Colors.white,
              ),
            )
          ],
        ));
  }

  void scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      if (_isLoading) return;
      _isLoading = true;
      onLoadMore();
    }
  }

  void textFocusListener() {
    _scrollController.animateTo(0.0,
        duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
  }

  void onLoadMore() async {
    // 模拟请求接口
    await Future.delayed(Duration(seconds: 1));
    for (int i = 0; i < 10; i++) {
      _chatRecords.addAll([
        {
          "host": i % 2 == 0 ? false : true,
          "name": i % 2 == 0 ? "Ly" : "GTX",
          "content": i % 2 == 0 ? "hello" : "hi"
        },
      ]);
    }
    _isLoading = false;
    setState(() {});
  }

  void onSendMessage() async {
    if (_textEditingController.text.trim().length == 0) return;
    _chatRecords.insert(0, {
      "host": true,
      "name": "andy",
      "content": _textEditingController.text.trim()
    });
    _textEditingController.text = "";
    setState(() {});
  }
}
