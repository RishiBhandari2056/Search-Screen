
// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//    List columnHead = [
//     'Client ID',
//     'Name',
//     'Contact',
//     'Address',
//     'Order Count',
//     'Credit',
//     'Actions'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     var dts = DTS();
//     var tableItemsCount = dts.rowCount;
//     var defaultRowsPerPage = PaginatedDataTable.defaultRowsPerPage;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: PaginatedDataTable(columns: [
//           for(var items in columnHead)
//         DataColumn(label: Text(items))

//         ],
//         onRowsPerPageChanged: ,

// ),
//       ),
      
//     );
//   }
// }
// class DTS extends DataTableSource{
//   @override
//   DataRow getRow(int index){
//     return DataRow.byIndex(
//       index: index,
//       cells: [DataCell(Text('row #$index'))]

//     );
//   }
// }