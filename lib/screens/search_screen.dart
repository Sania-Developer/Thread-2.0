import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_thread/models/searchlist.dart';

import '../util/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Search',
                  style: GoogleFonts.roboto(
                      fontSize: 32,
                      color: AppColor.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.magnifyingGlass, color: Colors.grey.shade600,size: 20,),
                    SizedBox(width: 8),
                    Text('Search',style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: Colors.grey.shade600,),),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index){
                  return listTile(searchlistItem[index].image, searchlistItem[index].idName, searchlistItem[index].name, searchlistItem[index].followers);
                },itemCount: searchlistItem.length,),
              )
              // Add more user tiles as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget listTile(String images, String idName, String name, String followers){
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(images),
          ),
          title: Text(
            idName,
            style: GoogleFonts.roboto( color: AppColor.white,fontSize: 16),),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,  style: GoogleFonts.roboto( color: Colors.grey.shade600,fontSize: 16),
              ),
              SizedBox(height: 5,),
              Text(
                '$followers followers',
                style: GoogleFonts.roboto( color: AppColor.white,fontSize: 16),),
            ],
          ),
          trailing: Container(
            width: 110,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade900,)
            ),
            child: Center(child: Text('Follow', style: GoogleFonts.roboto(color: AppColor.white, fontSize: 18),)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
          child: SizedBox(
            child: Divider(
              height: 15,
              thickness: 0.2,
            ),
          ),
        )
      ],
    );
  }
}


