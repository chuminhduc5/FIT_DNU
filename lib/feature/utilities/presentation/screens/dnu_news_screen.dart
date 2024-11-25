import 'package:flutter/material.dart';

class DnuNewsScreen extends StatelessWidget {
  final List<Map<String, String>> newsItems = [
    {
      'title': 'Thông Báo Về Việc Nghiêm Túc, Tăng Cường Tr...',
      'date': '09:07, 20/07/2021',
      'image': 'https://via.placeholder.com/150' // Replace with actual image link
    },
    {
      'title': 'Tiếp Sức Sinh Viên Nội Trú Trong Mùa Dịch Cov...',
      'date': '09:07, 20/07/2021',
      'image': 'https://via.placeholder.com/150' // Replace with actual image link
    },
    {
      'title': 'Thông Báo',
      'date': '09:07, 20/07/2021',
      'image': 'https://via.placeholder.com/150' // Replace with actual image link
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Tin tức', style: TextStyle(fontSize: 20, color: Colors.white)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {},
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child: Container(
              color: Colors.deepOrangeAccent, // Đổi màu nền TabBar
              child: TabBar(
                indicatorColor: Colors.white, // Màu gạch chân
                labelColor: Colors.white, // Màu chữ khi được chọn
                unselectedLabelColor: Colors.black54, // Màu chữ khi không được chọn
                tabs: [
                  Tab(text: 'Tin Công nghệ'),
                  Tab(text: 'Phòng chống Covid'),
                  Tab(text: 'Tin tức chung'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            buildNewsList(),
            buildNewsList(),
            buildNewsList(),
          ],
        ),
      ),
    );
  }

  Widget buildNewsList() {
    return ListView.builder(
      itemCount: newsItems.length,
      itemBuilder: (context, index) {
        final newsItem = newsItems[index];
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          elevation: 4.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
                child: Image.network(
                  newsItem['image']!,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsItem['title']!,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      newsItem['date']!,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
