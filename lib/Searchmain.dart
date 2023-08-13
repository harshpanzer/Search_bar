import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  //OverlayEntry? entry;
  TextEditingController city = TextEditingController();
  TextEditingController qualification = TextEditingController();
  TextEditingController bodytype = TextEditingController();

  final List<Map<String, dynamic>> _allUsers = [
    {
      "image":
          "https://im.rediff.com/300-300/movies/2019/oct/14neeraj-madhav2.jpg",
      "id": 1,
      "name": "Dr. Aarke Tripathi",
      "des": "Co-founder & CEO @Dudu ",
    },
    {
      "id": 2,
      "name": "Harsh Sharma",
      "des": "Co-founder & CEO @hehe ",
      "image":
          "https://upload.wikimedia.org/wikipedia/en/4/47/Iron_Man_%28circa_2018%29.png",
    },
    {
      "id": 3,
      "name": "Rohit Kumar",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://sa1s3optim.patientpop.com/assets/images/provider/photos/1888657.jpg",
    },
    {
      "id": 4,
      "name": "Mitesh Raj",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_LmG47_W3RM0QBVGI23-vodL_oOOJxLIBrg&usqp=CAU",
    },
    {
      "id": 5,
      "name": "Dr. Manu Kumar",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://img.freepik.com/free-photo/black-man-city_1157-17027.jpg?w=2000",
    },
    {
      "id": 6,
      "name": "Deno James",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://media.gettyimages.com/photos/portrait-of-smiling-mid-adult-man-wearing-tshirt-picture-id985138674?s=612x612",
    },
    {
      "id": 7,
      "name": "Kaviraj Patil",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://image.shutterstock.com/image-photo/handsome-young-man-running-across-260nw-587931092.jpg",
    },
    {
      "id": 8,
      "name": "Raja Ram",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://media.istockphoto.com/photos/portrait-of-young-happy-indian-business-man-executive-looking-at-picture-id1309489745?b=1&k=20&m=1309489745&s=170667a&w=0&h=Wo_7nESC_ePyEYfEsnOm-rP6ElkxbWqIB3Ga4W3nw8M=",
    },
    {
      "id": 9,
      "name": "Caversky",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://media.istockphoto.com/photos/young-man-looking-at-digital-tablet-picture-id1184382530?k=20&m=1184382530&s=612x612&w=0&h=-G67wR9BU2-XqLTR70purl0vb2PFbu3OAg0T7O_ZpiI=",
    },
    {
      "id": 10,
      "name": "Becky",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://e0.365dm.com/22/06/2048x1152/skysports-erling-haaland-man-city_5803257.jpg",
    },
  ];

  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;

    super.initState();
    //  WidgetsBinding.instance!.addPostFrameCallback((_) => showOverlay());
  }

  showOverlay(BuildContext context) async {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    OverlayState? overlayState = Overlay.of(context);
    // overlayEntry.remove();
    double _value = 20;
    OverlayEntry? overlayEntry;
    overlayEntry = OverlayEntry(builder: (context) {
      return Positioned(
        top: height * 0.24,
        left: 20,
        right: 20,
        child: Material(
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff201c1c),
                borderRadius: BorderRadius.circular(20)),
            height: height * 0.5,
            width: width * 0.8,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 42, 83, 218)),
                        alignment: Alignment.center,
                        height: 40,
                        width: 60,
                        //color: Color.fromARGB(255, 42, 83, 218),
                        child: Text(
                          "City",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 68,
                      ),
                      Container(
                        width: width * 0.5,
                        height: 50,
                        child: TextField(
                          controller: city,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            helperStyle: TextStyle(color: Colors.white),
                            // labelStyle:
                            //     TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15),
                            hintText: "Search",
                            suffixIcon: const Icon(Icons.search),
                            //prefix: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: const BorderSide(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 42, 83, 218)),
                        alignment: Alignment.center,
                        height: 40,
                        width: 110,
                        //color: Color.fromARGB(255, 42, 83, 218),
                        child: Text(
                          "Qualification",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: width * 0.5,
                        height: 50,
                        child: TextField(
                          controller: qualification,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            helperStyle: TextStyle(color: Colors.white),
                            // labelStyle:
                            //     TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15),
                            hintText: "Search",
                            suffixIcon: const Icon(Icons.search),
                            //prefix: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: const BorderSide(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 42, 83, 218)),
                        alignment: Alignment.center,
                        height: 40,
                        width: 60,
                        //color: Color.fromARGB(255, 42, 83, 218),
                        child: Text(
                          "Age",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: StatefulBuilder(
                          builder: (context, setState) => Container(
                            width: 200,
                            child: SfSlider(
                              min: 0.0,
                              max: 100.0,
                              value: _value,
                              interval: 20,
                              showTicks: true,
                              showLabels: true,
                              enableTooltip: true,
                              minorTicksPerInterval: 1,
                              onChanged: (dynamic value) {
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 42, 83, 218)),
                        alignment: Alignment.center,
                        height: 40,
                        width: 100,
                        //color: Color.fromARGB(255, 42, 83, 218),
                        child: Text(
                          "Body Type",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: width * 0.5,
                        height: 50,
                        child: TextField(
                          controller: bodytype,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            helperStyle: TextStyle(color: Colors.white),
                            // labelStyle:
                            //     TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15),
                            hintText: "Search",
                            suffixIcon: const Icon(Icons.search),
                            //prefix: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: const BorderSide(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      overlayEntry?.remove();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.55),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber),
                        alignment: Alignment.center,
                        height: 40,
                        width: 90,
                        //color: Color.fromARGB(255, 42, 83, 218),
                        child: Text(
                          "Done",
                          style: TextStyle(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
    Navigator.of(context).overlay?.insert(overlayEntry);
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff201c1c),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 42, 83, 218),
          centerTitle: true,
          title: const Text(
            'User List',
            style: TextStyle(color: Colors.white),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: Colors.white),
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.white),
                helperStyle: TextStyle(color: Colors.white),
                // labelStyle:
                //     TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                //prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      "Filters",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Icon(
                      Icons.line_weight_sharp,
                      color: Colors.amber,
                    )
                  ],
                ),
              ),
              onTap: () {
                showOverlay(context);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        elevation: 1,
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                NetworkImage(_foundUsers[index]['image']),
                            backgroundColor: Colors.transparent,
                          ),
                          title: Text(_foundUsers[index]['name']),
                          subtitle: Text('${_foundUsers[index]["des"]}'),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found Please try with diffrent search',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
