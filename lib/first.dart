import 'package:flutter/material.dart';
import 'package:flutter_ecom/second.dart';

class Products {
  String pName, image, rating, reviewCount, piece, price, qty;

  Products(this.pName, this.image, this.rating, this.reviewCount, this.piece,
      this.price, this.qty);
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Products> list = [
      Products(
          'Iphone 12',
          'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
          '5.0',
          '23',
          '20',
          '\$90',
          '1'),
      Products(
          'Note 20 Ultra',
          'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
          '5.0',
          '23',
          '20',
          '\$90',
          '1'),
      Products(
          'Macbook Air',
          'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
          '5.0',
          '23',
          '20',
          '\$90',
          '1'),
      Products(
          'Macbook Pro',
          'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
          '5.0',
          '23',
          '20',
          '\$90',
          '1'),
      Products(
          'Gaming PC',
          'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
          '5.0',
          '23',
          '20',
          '\$90',
          '1'),
      Products(
          'Iphone 12',
          'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
          '5.0',
          '23',
          '20',
          '\$90',
          '1'),
      Products(
          'Macbook Air',
          'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
          '5.0',
          '23',
          '20',
          '\$90',
          '1'),
      Products(
          'Iphone 12',
          'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
          '5.0',
          '23',
          '20',
          '\$90',
          '1'),
      Products(
          'Gaming PC',
          'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
          '5.0',
          '23',
          '20',
          '\$90',
          '1'),
      Products(
          'Macbook Pro',
          'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
          '5.0',
          '23',
          '20',
          '\$90',
          '1'),
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
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.zero,
          color: Colors.grey.shade200,
          child: ListView(
            shrinkWrap: true,
            children: [
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person_outline, size: 150, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('User', style: TextStyle(fontSize: 24)),
                          Text('abc@gmail.com', style: TextStyle(fontSize: 16)),
                          SizedBox(
                            height: 20,
                          ),
                          Text('logout',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.deepPurple)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Account Information'.toUpperCase(),
                        style: TextStyle(fontSize: 18)),
                    ListTile(
                      title: Text('Full Name', style: TextStyle(fontSize: 16)),
                      subtitle: Text('User'),
                      trailing: Icon(Icons.edit),
                    ),
                    ListTile(
                      title: Text('Email', style: TextStyle(fontSize: 16)),
                      subtitle: Text('user@gmail.com'),
                    ),
                    ListTile(
                      title: Text('Phone', style: TextStyle(fontSize: 16)),
                      subtitle: Text('+0900-786-01'),
                    ),
                    ListTile(
                      title: Text('Address', style: TextStyle(fontSize: 16)),
                      subtitle: Text('New York, Random Street, House No. 72'),
                    ),
                    ListTile(
                      title: Text('Gender', style: TextStyle(fontSize: 16)),
                      subtitle: Text('Male'),
                    ),
                    ListTile(
                      title:
                          Text('Date of Birth', style: TextStyle(fontSize: 16)),
                      subtitle: Text('October 13, 1999'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ConstrainedBox(
              constraints: BoxConstraints(minHeight: 120),
              child: InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          // shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: NetworkImage(list[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list[index].pName,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Row(
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
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "(${list[index].piece}) Pieces",
                                ),
                                SizedBox(width: 10),
                                Text(
                                  list[index].price,
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Quantity:${list[index].qty}",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Second()));
                },
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: list.length),
    );
  }
}
