import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeExpansionPanel(),
    );
  }
}

class PracticeExpansionPanel extends StatefulWidget {
  @override
  State<PracticeExpansionPanel> createState() => _PracticeExpansionPanelState();
}

class _PracticeExpansionPanelState extends State<PracticeExpansionPanel> {
  
	// Set List<bool> type variable and filled with false
  List<bool> _expanded = List.filled(2, false);

  // Set bool type variable to false
  bool _subExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice ExpansionPanel"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: ExpansionPanelList(

              // Set expandedHeaderPadding
              expandedHeaderPadding: const EdgeInsets.all(10),
              
              // Set dividerColor 
              dividerColor: Colors.grey,

              // Set expansionCallback using setState and panelIndex
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  _expanded[panelIndex] = !_expanded[panelIndex];
                });
              },

              children: [

                // Set ExpansionPanel
                ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return const ListTile(
                      title: Text('Expansion Panel 1', style: TextStyle(color: Colors.black)),
                    );
                  },
                  body: const ListTile(
                    title: Text('You can see this tile when you tap panel'),
                  ),
                  isExpanded: _expanded[0],
                  canTapOnHeader: true,
                ),

                // Set ExpansionPanel
                ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return const ListTile(
                      title: Text('Expansion Panel 2', style: TextStyle(color: Colors.black)),
                    );
                  },
									// In body's ExpansionPanelList, set animationDuration
                  body: ExpansionPanelList(
                    animationDuration: const Duration(milliseconds: 3000),
                    children: [
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return const ListTile(
                            title: Text('You can add sub Expansion Panel', style: TextStyle(color: Colors.black))
                          );
                        },
                        body: const ListTile(
                          title: Text('Sub Expansion Tile'),
                          trailing: Icon(Icons.delete),
                        ),
                        isExpanded: _subExpanded,
                        canTapOnHeader: true,
                      ),
                    ],
                    dividerColor: Colors.grey,
                    expansionCallback: (panelIndex, isExpanded) {
                      setState(() {
                        _subExpanded = !_subExpanded;
                      });
                    },

                  ),
                  isExpanded: _expanded[1],
                  canTapOnHeader: true,
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
