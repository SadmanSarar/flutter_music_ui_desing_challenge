import 'package:flutter/material.dart';

class PlayListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      child: ListView.builder(
        itemBuilder: (context, item) {
          return InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Image.network(
                    "https://picsum.photos/400",
                    height: 32,
                    width: 32,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Never Say',
                      style: TextStyle(
                        color: Color(0xFFf7355f),
                        fontFamily: 'Nexa',
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Believe .2012',
                      style: TextStyle(
                        color: Color(0xFFf7355f),
                        fontFamily: 'Nexa',
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
