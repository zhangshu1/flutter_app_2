import 'package:flutter/material.dart';

class ExpansionTileSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('ExpansionTile'),
        ),
        body: new ListView.builder(
          itemBuilder: (BuildContext context, int index) => new EntryItem(data[index]),
          itemCount: data.length,
        ),
      ),
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  new Entry('Current State'),
  new Entry('Risk Monitor',
    <Entry>[
      new Entry('Hypotension'),
      new Entry('Hypothermia'),
      new Entry('Pneumothorax')
    ],
  ),
  new Entry('Activity Monitor'),
  new Entry('Risk History',
    <Entry>[
      new Entry('All'),
      new Entry('Hypotension'),
      new Entry('Hypothermia'),
      new Entry('Pneumothorax')
    ],
  ),
  new Entry('Lab Work',
    <Entry>[
      new Entry('View Recommended Test'),
      new Entry('Order Additional Test'),
      new Entry('Enter Patient Report'),
      new Entry('View Patient Report'),
      new Entry('View Recommended Medication')
    ],
  ),
  new Entry("PSSAT Form"),
  new Entry('S.T.A.B.L.E',
    <Entry>[
      new Entry('Sugar',
        <Entry>[
          new Entry("Calculators"),
          new Entry("Conventors"),
          new Entry("Risk & Treatment"),
          new Entry("Quick Slides"),
          new Entry("Quick Cards"),
          new Entry("Educational Material")
        ],
      ),
      new Entry('Temperature'),
      new Entry('Airway'),
      new Entry('Blood Pressure'),
      new Entry('Lab Work'),
      new Entry('Emotional Support')
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty)
      return new ListTile(title: new Text(root.title));
    return new ExpansionTile(
      key: new PageStorageKey<Entry>(root),
      title: new Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

void main() {
  runApp(new ExpansionTileSample());
}