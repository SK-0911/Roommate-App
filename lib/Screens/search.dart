import 'package:flutter/material.dart';
import 'package:ServiceBox/const/CustomColors.dart';
import '../const/cities.dart';
import '../hostelListing.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  static List main_cities_list = [
    CitiesList("Mumbai", 227),
    CitiesList("Delhi", 120),
    CitiesList("Bangalore", 140),
    CitiesList("Kolkata", 210),
  ];
  
  List displayList = List.from(main_cities_list);

  // Function to update list
  void filterList(String value){
      setState(() {
        displayList = main_cities_list;
        displayList = main_cities_list.where((element) => element.name.toLowerCase().contains(value)).toList();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkBlueTheme,
        leading: BackButton(),
      ),
      backgroundColor: AppColors.darkBlueTheme,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Search",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),

            TextField(
              onChanged: (val) => filterList(val),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "e.g. Mumbai, Delhi, Pune",
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.4),
                ),
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.white,
              ),
            ),

            SizedBox(height: 20),

            Container(
              child: Expanded(
                  child: displayList.length > 0 ? ListView.builder(
                      itemCount: displayList.length,
                      itemBuilder: (context,index) => ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: Text(
                          displayList[index].name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '${displayList[index].properties}+ properties',
                          style: TextStyle(
                            color: Colors.white38,
                          ),
                        ),
                        trailing: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>Listing()));
                          },
                          child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                              size: 15,
                          ),
                        ),
                      ),
                  ) : const Center(
                      child: Text(
                        "No cities found",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                        ),
                      )
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
