import 'package:flutter/material.dart';
import 'package:test/widgets/web.dart';

class DetailPage extends StatelessWidget {
  Map<String,String> countryItem;

  DetailPage({required this.countryItem});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset("images/${countryItem["img"]}.png"),
                SizedBox(height: 20,),
                Text(countryItem["country"]!,
                    style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 20,),
                Text("Description : ${countryItem["description"]!}",
                  style:Theme.of(context).textTheme.titleMedium ,
                ),
                SizedBox(height: 15,),
                Text("Performance : ${countryItem["performance"]!}",
                  style:Theme.of(context).textTheme.titleMedium ,
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                    onPressed: () {
                      var website = countryItem["website"];
                      if (website != null) {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WebPage(website: website),));
                      }

                    },
                    child: Text("Web",style: Theme.of(context).textTheme.bodyLarge),

                ),
                

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
