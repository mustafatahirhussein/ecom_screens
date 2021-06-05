import 'package:flutter/material.dart';

class History {
  String pName, image, rating, reviewCount, price;

  History(this.pName, this.image, this.rating, this.reviewCount, this.price);
}

class Second extends StatelessWidget {
  const Second({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<History> list = [
      History(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '\$10',
      ),
      History(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '\$10',
      ),
      History(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '\$10',
      ),
      History(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '\$10',
      ),
      History(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '\$10',
      ), History(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '\$10',
      ),
      History(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '\$10',
      ),
      History(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '\$10',
      ),
      History(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '\$10',
      ),
      History(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '\$10',
      ),

    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 3,
        title: Text(
          'Ecom App UI',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Username',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'History',
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    dense: true,
                    leading: Container(
                      height: 100,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(list[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      list[index].pName,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text(
                          list[index].rating,
                        ),
                        Text(
                          "(${list[index].reviewCount}) Reviews",
                        ),
                      ],
                    ),
                    trailing: Text(
                      list[index].price,
                    ),
                  );
                },

                itemCount: list.length),
          ),
        ],
      ),
    );
  }
}
