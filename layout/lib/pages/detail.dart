import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  //const DetailPage({ Key? key }) : super(key: key);
//ทำช่องใส่ data
//ประกาศตัวแปรมาชุดหนึ่ง
 final v1,v2,v3,v4;
 //ประกาศเป็น construrure ไว้
 //this คือ detail page.v1
 DetailPage(this.v1, this.v2, this.v3, this.v4);
 //หน้า home.dart มี error



  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
//เป็นการประกาศตัวแปรไว้
var _v1, _v2, _v3, _v4;
//พิมพ์ init แล้วเลือก function แรก
@override
  void initState() {
    // TODO: implement initState
    super.initState();
// เป็น v1data ก็ได้ 
    _v1 = widget.v1;
    _v2 = widget.v2;
    _v3 = widget.v3;
    _v4 = widget.v4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(//wrap with padding ไฟเหลือง
          children: [
            Text(_v1,style: TextStyle(fontSize: 30),),
            Text(_v2, style: TextStyle(fontSize: 25, color: Colors.blue),),
            Image.network(_v3),
            Text(_v4)
          ],
        ),
      ),
      
    );
  }
}