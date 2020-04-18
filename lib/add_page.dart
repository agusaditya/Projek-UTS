import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  AddItem(this.addNew);
  final Function addNew;

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final titleController = TextEditingController();
  final namaController = TextEditingController();
  final hargaController = TextEditingController();
  final qtyController = TextEditingController();

  void saveNewItem() {
    final title = titleController.text;
    final nama = namaController.text;
    final harga = hargaController.text;
    final qty = int.parse(qtyController.text);

    if (title.isEmpty || nama.isEmpty || harga.isEmpty || qty <= 0) {
      return;
    }
    widget.addNew(title,nama,double.parse(harga),qty);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.yellow,
            title : Text("New Order", style: TextStyle(color: Colors.black, fontSize: 20.0),
            )
        ),
        body:SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Order Name'),
                  controller: titleController,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Waiter'),
                  controller: namaController,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Price'),
                  controller: hargaController,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Qty'),
                  controller: qtyController,
                  keyboardType: TextInputType.number,
                ),
                FlatButton(
                  child: Text('Add'),
                  onPressed: saveNewItem,
                  textColor: Colors.black,
                )
              ],
            ),
          ),
        ),
      );
}
