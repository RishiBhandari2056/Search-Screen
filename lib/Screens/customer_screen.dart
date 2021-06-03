import 'package:customerscreen/model/customerdetails.dart';
import 'package:flutter/material.dart';

class CustomerScreen extends StatefulWidget {
  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  List columnHead = [
    'Client ID',
    'Name',
    'Contact',
    'Address',
    'Order Count',
    'Credit',
    'Actions'
  ];
  List<CustomerDetails> customer = [
    CustomerDetails(
      clientID: 0192,
      name: "Sneha Thapa",
      contact: "9820394929",
      address: "Bagar",
      orderCount: "10",
      credit: "No",
    ),
    CustomerDetails(
      clientID: 0193,
      name: "Kriti Gurung",
      contact: "9820394929",
      address: "Chinedada",
      orderCount: "3",
      credit: "Yes",
    ),
    CustomerDetails(
      clientID: 0194,
      name: "Sushil Kandel",
      contact: "9820394929",
      address: "Lekhnath",
      orderCount: "7",
      credit: "Yes",
    ),
    CustomerDetails(
      clientID: 0195,
      name: "Bikram Dhakal",
      contact: "9820394929",
      address: "Pokhara",
      orderCount: "2",
      credit: "No",
    ),
    CustomerDetails(
      clientID: 0196,
      name: "Sandesh Koirala",
      contact: "9820394929",
      address: "Lakeside",
      orderCount: "11",
      credit: "No",
    ),
    CustomerDetails(
      clientID: 0197,
      name: "Subodh Basnet",
      contact: "9820394929",
      address: "GairiKhet",
      orderCount: "B",
      credit: "No",
    ),
    CustomerDetails(
      clientID: 0198,
      name: "Sneha Thapa",
      contact: "9820394929",
      address: "Bagar",
      orderCount: "10",
      credit: "No",
    ),
    CustomerDetails(
      clientID: 0199,
      name: "Sneha Thapa",
      contact: "9820394929",
      address: "Bagar",
      orderCount: "10",
      credit: "No",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            DataTable(
              columns: [
                for (var item in columnHead)
                  DataColumn(
                      label: Text(item,
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 16)))
                // DataColumn(
                //     label: Text("Client ID",
                //         style: TextStyle(fontFamily: 'Roboto', fontSize: 16))),
                // DataColumn(
                //     label: Text("Name",
                //         style: TextStyle(fontFamily: 'Roboto', fontSize: 16))),
                // DataColumn(
                //     label: Text("Contact",
                //         style: TextStyle(fontFamily: 'Roboto', fontSize: 16))),
                // DataColumn(
                //     label: Text("Address",
                //         style: TextStyle(fontFamily: 'Roboto', fontSize: 16))),
                // DataColumn(
                //     label: Text("Order Count",
                //         style: TextStyle(fontFamily: 'Roboto', fontSize: 16))),
                // DataColumn(
                //     label: Text("Credit",
                //         style: TextStyle(fontFamily: 'Roboto', fontSize: 16))),
                // DataColumn(
                //     label: Text("Actions",
                //         style: TextStyle(fontFamily: 'Roboto', fontSize: 16)))
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text(customer[0].clientID.toString(),
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('Chelsi Khetan',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('9827374929',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('Gairapatan',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('5',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('Yes',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(
                    PopupMenuButton(
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem(child: Text("Yes")),
                          const PopupMenuItem(child: Text("No")),
                        ];
                      },
                    ),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(Text('0192',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text("Sneha Thapa",
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('9827374929',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('Bagar',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('5',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('Yes',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(
                    PopupMenuButton(
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem(child: Text("Yes")),
                          const PopupMenuItem(child: Text("No")),
                        ];
                      },
                    ),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(Text('0193',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text("Sushil Kandel",
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('9827374929',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('Begnas',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('2',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('No',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(
                    PopupMenuButton(
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem(child: Text("Yes")),
                          const PopupMenuItem(child: Text("No")),
                        ];
                      },
                    ),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(Text('0194',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text("Bikram Dhakal",
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('9827374929',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('Lekhnath',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('12',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('No',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(
                    PopupMenuButton(
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem(child: Text("Yes")),
                          const PopupMenuItem(child: Text("No")),
                        ];
                      },
                    ),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(Text('0195',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text("Max Gurung",
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('9827374929',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('Lakeside',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('10',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('Yes',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(
                    PopupMenuButton(
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem(child: Text("Yes")),
                          const PopupMenuItem(child: Text("No")),
                        ];
                      },
                    ),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(Text('0196',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text("Rohit Gurung",
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('9827374928',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('RamBazzar',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('15',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('B',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(
                    PopupMenuButton(
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem(child: Text("Yes")),
                          const PopupMenuItem(child: Text("No")),
                        ];
                      },
                    ),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(Text('0197',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text("Sandesh Thapa",
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('9827374929',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('Zero',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('2',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('Yes',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(
                    PopupMenuButton(
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem(child: Text("Yes")),
                          const PopupMenuItem(child: Text("No")),
                        ];
                      },
                    ),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(Text('019',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text("Amit Gurung",
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('9827374929',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('SrijanaChowk',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('10',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(Text('Yes',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
                  DataCell(
                    PopupMenuButton(
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem(child: Text("Yes")),
                          const PopupMenuItem(child: Text("No")),
                        ];
                      },
                    ),
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
