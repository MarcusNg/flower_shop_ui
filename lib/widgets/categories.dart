import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final gradients = [
    [
      Colors.orange[400],
      Colors.orange[500],
      Colors.orange[600],
      Colors.orange[700]
    ],
    [
      Colors.blue[400],
      Colors.blue[500],
      Colors.blue[600],
      Colors.blue[700],
    ],
    [
      Colors.red[400],
      Colors.red[500],
      Colors.red[600],
      Colors.red[700],
    ],
    [
      Colors.green[400],
      Colors.green[500],
      Colors.green[600],
      Colors.green[700],
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Text(
            'categories',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 80.0,
          child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return SizedBox(width: 8.0);
              }
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: 175.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 6.0),
                        blurRadius: 6.0,
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.1, 0.5, 0.7, 0.9],
                      colors: gradients[index - 1],
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
