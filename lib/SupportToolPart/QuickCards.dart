import 'package:flutter/material.dart';

var assetCard1 = new AssetImage('images/card1.jpeg');
var imageCard1 = new Image(image: assetCard1);

var assetCard2 = new AssetImage('images/card2.jpeg');
var imageCard2 = new Image(image: assetCard2);

var assetCard3 = new AssetImage('images/card3.jpeg');
var imageCard3 = new Image(image: assetCard3);

class QuickCard extends StatefulWidget {

  @override
  QuickCardState createState() => new QuickCardState();
}

class QuickCardState extends State<QuickCard> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: cards.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Quick Cards'),
      ),

      body: new TabBarView(
        controller: _tabController,
        children: cards.map((SingleCard singleCard) {
          return new Card(
            child: new SingleCardItem(singleCard: singleCard),
          );
        }).toList(),
      ),
    );
  }
}

class SingleCard {
  Widget container;
  SingleCard(this.container);
}

class SingleCardItem extends StatelessWidget {
  final SingleCard singleCard;
  const SingleCardItem({Key key, this.singleCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: singleCard.container,
    );
  }
}

List<SingleCard> cards = <SingleCard>[
  new SingleCard(new Card1()),
  new SingleCard(new Card2()),
  new SingleCard(new Card3()),
];

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: imageCard1,
    );
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: imageCard2,
    );
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: imageCard3,
    );
  }
}

void main() => runApp(new MaterialApp(
  title: 'suibian',
  home: new QuickCard(),
));