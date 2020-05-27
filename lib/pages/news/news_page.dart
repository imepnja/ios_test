import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:iosTest/constants.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final _controller = ScrollController();

  bool _showLocalNews = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: cDark,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
          padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                    onTap: () => setState(() => _showLocalNews = true),
                    child: Text(
                      'My Gym',
                      style: TextStyle(
                          color: cWhite,
                          fontSize: 17,
                          fontWeight: _showLocalNews
                              ? FontWeight.w600
                              : FontWeight.w300),
                      textAlign: TextAlign.right,
                    )),
              ),
              SizedBox(width: 10),
              Text('|', style: TextStyle(color: cWhite, fontWeight: FontWeight.w200),),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: InkWell(
                  // radius: 2.0,
                  onTap: () => setState(() {
                    print('tap');
                    _showLocalNews = false;
                    print(_showLocalNews);
                  }),
                  child: Text(
                    'The world',
                    style: TextStyle(
                        color: cWhite,
                        fontSize: 16,
                        fontWeight: !_showLocalNews
                            ? FontWeight.w600
                            : FontWeight.w300),
                    textAlign: TextAlign.left,
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: FadingEdgeScrollView.fromScrollView(
            gradientFractionOnEnd: 0,
            child: ListView(
              controller: _controller,
              children: _showLocalNews ? myGym() : worldNews(),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> myGym() {
    return [
      NewsCard(
        title: 'Lorem ipsum is part of the header',
        content:
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et.',
        author: 'AUTHOR',
        imgUrl: 'assets/images/alessandro-guarino-IH_wt_fD7ls-unsplash.jpg',
      ),
      SizedBox(height: 20),
      NewsCard(
        title: 'Lorem ipsum is part of the header',
        content:
            'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
        author: 'AUTHOR',
        imgUrl: 'assets/images/diana-spatariu-FnSLyRs5MiU-unsplash.jpg',
      ),
      SizedBox(height: 20),
      NewsCard(
        title: 'Lorem ipsum is part of the header',
        content:
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.',
        author: 'AUTHOR',
        imgUrl: 'assets/images/luca-bravo-a_hPPrncGlQ-unsplash.jpg',
      ),
      SizedBox(height: 20),
    ];
  }

  List<Widget> worldNews() {
    return [];
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String content;
  final String author;
  final String imgUrl;

  const NewsCard({Key key, this.title, this.content, this.author, this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 10, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: cWhite,
        boxShadow: [
          BoxShadow(
              blurRadius: 10, spreadRadius: 5, color: cBlack.withOpacity(0.1))
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: AssetImage(imgUrl),
                  width: 150,
                  // height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Flexible(child: Text(content)),
            ],
          )
        ],
      ),
    );
  }
}
