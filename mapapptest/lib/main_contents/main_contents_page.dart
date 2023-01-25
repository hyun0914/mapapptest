import 'package:flutter/material.dart';

import '../const/colors.dart';
import 'material/body.dart';
import 'material/drawer_form.dart';

class MainContentsPage extends StatelessWidget {
  const MainContentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: MAIN_TABBAR_COLOR,
          title: Text('로고 이미지', style: TextStyle(fontSize: 24, color: Colors.black),),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Builder(
              builder: (context_openDrawer) {
                return InkWell(onTap: () => Scaffold.of(context_openDrawer).openDrawer(), child: Icon(Icons.menu, size: 36, color: Colors.black,));
              }
            ),
          ),
          actions: [
            InkWell(onTap: (){}, child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Icon(Icons.help_outline, size: 36, color: Colors.black,),
            )),
          ],
          bottom: TabBar(
            labelColor: MAIN_TAB_SELECT_COLOR,
            unselectedLabelColor: MAIN_TAB_UNSELECT_COLOR,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            indicator: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black, width: 2))),
            tabs: [
              Container(
                height: 40,
                child: Tab(text: '노선생성',),
              ),
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Tab(text: '노선현황'),
                    SizedBox(width: 8,),

                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.amber.shade400,
                      child: Center(child: Text('0', style: TextStyle(fontSize: 14, color: CONTENTS_TEXT_B_COLOR))),
                    )],
                ),
              ),
              //Tab(child: Text('노선현황', style: TextStyle(color: Colors.black)),),
            ],
          ),
        ),
        drawer: DrawerForm(),
        body: Body(),
      ),
    );
  }
}
