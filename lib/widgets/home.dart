import 'package:flutter/material.dart';
import 'package:test/widgets/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String,String>>_items = [
    {
      "country": "Japan",
      "description": "Japan's WorldSkills team is known for its excellence in precision manufacturing and robotics.",
      "performance": "Gold in Mechatronics, Silver in CNC Milling, Bronze in Web Development",
      "website": "https://www.worldskillsjapan.or.jp/",
      "img" : "jp"
    },
    {
      "country": "Germany",
      "description": "Germany excels in automotive technology and engineering skills.",
      "performance": "Gold in Automotive Technology, Silver in Welding, Bronze in Industrial Mechanics",
      "website": "https://www.worldskillsgermany.com/",
      "img" : "de"
    },
    {
      "country": "Brazil",
      "description": "Brazil has a strong performance in beauty therapy and mobile robotics.",
      "performance": "Gold in Mobile Robotics, Silver in Beauty Therapy, Bronze in Electrical Installations",
      "website": "https://www.worldskills.org.br/",
      "img" : "br"
    },
    {
      "country": "South Korea",
      "description": "South Korea leads in IT network systems and software solutions.",
      "performance": "Gold in IT Software Solutions, Silver in Network Administration, Bronze in Cyber Security",
      "website": "https://www.skillskorea.or.kr/",
      "img" : "kr"
    },
    {
      "country": "United States",
      "description": "The USA team is known for its expertise in carpentry and cloud computing.",
      "performance": "Gold in Cloud Computing, Silver in Carpentry, Bronze in 3D Digital Game Art",
      "website": "https://www.skillsusa.org/",
      "img" : "us"
    },
    {
      "country": "France",
      "description": "France performs well in pastry arts and fashion technology.",
      "performance": "Gold in Pastry Arts, Silver in Fashion Technology, Bronze in Graphic Design",
      "website": "https://www.worldskills-france.org/",
      "img" : "fr"
    },
    {
      "country": "India",
      "description": "India is emerging as a strong contender in web development and mobile app development.",
      "performance": "Gold in Web Development, Silver in Mobile App Development, Bronze in Cloud Computing",
      "website": "https://www.nsdcindia.org/worldskills",
      "img" : "in"
    },
    {
      "country": "China",
      "description": "China dominates in electronics and CNC turning.",
      "performance": "Gold in Electronics, Silver in CNC Turning, Bronze in Mechatronics",
      "website": "http://www.china-skills.com/",
      "img" : "cn"
    },
    {
      "country": "United Kingdom",
      "description": "The UK has strong representation in plumbing and electrical installation.",
      "performance": "Gold in Plumbing, Silver in Electrical Installations, Bronze in Hairdressing",
      "website": "https://www.worldskillsuk.org/",
      "img" : "gb"
    },
    {
      "country": "Russia",
      "description": "Russia's team is strong in industrial control and welding.",
      "performance": "Gold in Industrial Control, Silver in Welding, Bronze in CNC Milling",
      "website": "https://worldskillsrussia.ru/",
      "img" : "ru"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body:ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: Theme.of(context).cardTheme.elevation,
              shape: Theme.of(context).cardTheme.shape,
              color: Theme.of(context).colorScheme.surface,
              child: ListTile(
                title: Text(_items[index]["country"]!,
                    style: Theme.of(context).textTheme.titleMedium,
                ),
                subtitle: Text(_items[index]["website"]!,
                    style:Theme.of(context).textTheme.bodyMedium ,
                ),
                trailing: Icon(Icons.chevron_right,color: Theme.of(context).colorScheme.secondary,),
                leading: Image.asset("images/${_items[index]["img"]}.png"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(countryItem: _items[index],)));
                },
              ),
            );
          }
      ),
    );
  }
}
