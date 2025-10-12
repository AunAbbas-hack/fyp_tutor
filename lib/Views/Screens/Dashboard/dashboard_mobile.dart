import 'package:flutter/material.dart';
import 'package:fyp_tutor/Views/uiHelper/customs.dart';

class DesktopMobile extends StatefulWidget {
  const DesktopMobile({super.key});

  @override
  State<DesktopMobile> createState() => _DesktopMobileState();
}

class _DesktopMobileState extends State<DesktopMobile> {
  List<Map<String, dynamic>> dashBoardButtons=[
    {"icon":AssetImage("https://i.sstatic.net/aP3b5.png"),"text":"HireTeacher"},
    {"icon":AssetImage("https://i.sstatic.net/aP3b5.png")},
    {"icon":AssetImage("https://i.sstatic.net/aP3b5.png"),"text":"HireTeacher"},
    {"icon":AssetImage("https://i.sstatic.net/aP3b5.png"),"text":"HireTeacher"},
    {"icon":AssetImage("https://i.sstatic.net/aP3b5.png"),"text":"HireTeacher"},
    {"icon":AssetImage("https://i.sstatic.net/aP3b5.png"),"text":"HireTeacher"},

  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                              "https://i.sstatic.net/aP3b5.png",
                            ),
                            foregroundColor: Colors.white,
                          ),
                        ),
                        Custom.customText(
                          text: "Hello John",
                          FontSize: 10,
                          color: Colors.black,
                          FontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Icon(Icons.notifications_none),
                    ),
                  ],
                ),
                SearchAnchor(
                  builder: (BuildContext, SearchController controller) {
                    return SearchBar(
                      controller: controller,
                      leading: Icon(Icons.search),
                      hintText: "Search",
                      onTap: () {
                        controller.openView();
                      },
                      onChanged: (_) {
                        controller.openView();
                      },
                    );
                  },
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                        final List<String> allSubjects = [
                          "Maths",
                          "Physics",
                          "Chemistry",
                          "English",
                          "Biology",
                        ];
                        final List<String> filteredSubjects = allSubjects.where((
                          subject,
                        ) {
                          return subject.toLowerCase().contains(
                            controller.text.toLowerCase(),
                          );
                        }).toList();
        
                        // Filter list ko list mein dikhany k liye
                        return List.generate(filteredSubjects.length, (
                          int index,
                        ) {
                          final String item = filteredSubjects[index];
                          return ListTile(
                            title: Text(item),
                            onTap: () {
                              setState(() {
                                controller.closeView(item);
                              });
                            },
                          );
                        });
                      },
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Custom.customText(
                    text: "MENU",
                    FontSize: 10,
                    color: Colors.black,
                    FontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: height * 0.3,
                  width: width * 8,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 3,
                    ),
                    itemCount: dashBoardButtons.length,
        
                    itemBuilder: (context,index){
                    final buttons=dashBoardButtons[index];
                    return InkWell(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              backgroundImage: buttons["icon"],
                            ),
                            SizedBox(height: 10,),
                         Custom.customText(text: buttons["text"], FontSize: 10, color: Colors.black, FontWeight: FontWeight.bold)
                          ],
                        ),
                      ),
                    );
                    } ,
        
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
