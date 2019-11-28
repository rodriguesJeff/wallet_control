import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet/src/controller/addrem.dart';
import 'package:wallet/src/ui/widgets/textField.dart';
//import 'package:flutter/rendering.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final controllerText = TextEditingController();
  final controllerPrice = TextEditingController();

  void _showModalAddCredit() {
    showModalBottomSheet(context: context, builder: (builder) {
      final operations = Provider.of<Operations>(context);      
      return Container(
        child: Form(
          key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Adicione Saldo",
                  style: TextStyle(fontSize: 20.0)
                ),
                SizedBox(height: 2),
                textField(controllerText, "Origem do dinheiro", "", TextInputType.text),
                SizedBox(height: 10),
                textField(controllerPrice, "Preço", "R\$", TextInputType.number),
                SizedBox(height: 10),
                ButtonTheme(
                  minWidth: 150,
                  height: 50,
                  child: RaisedButton(
                    child: Text(
                      "Adicionar",
                      style: TextStyle(color: Colors.white, fontSize: 20.0)
                    ),
                    onPressed: () {
                      if (formKey.currentState.validate()){
                        var value = double.parse(controllerPrice.text);
                        operations.creditValue(value);
                        controllerPrice.text = "";
                        controllerText.text = "";
                      }
                    },
                  )
                )
              ],
            ),
        ),
        padding: EdgeInsets.all(15.0),
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15)
        ),
      );
    });
  }

  void _showModalAddDebit() {
    showModalBottomSheet(context: context, builder: (builder) {
      final operations = Provider.of<Operations>(context);
      return Container(
        child: Form(
          key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Remova Saldo",
                  style: TextStyle(fontSize: 20.0)
                ),
                SizedBox(height: 2),
                textField(controllerText, "Destino do dinheiro", "", TextInputType.text,),
                SizedBox(height: 10),
                textField(controllerPrice, "Preço", "R\$", TextInputType.number,),
                SizedBox(height: 10),
                ButtonTheme(
                  minWidth: 150,
                  height: 50,
                  child: RaisedButton(
                    child: Text(
                      "Remover",
                      style: TextStyle(color: Colors.white, fontSize: 20.0)
                    ),
                    onPressed: () {
                      if (formKey.currentState.validate()){
                        var value = double.parse(controllerPrice.text);
                        operations.debitValue(value);
                        controllerPrice.text = "";
                        controllerText.text = "";
                      }
                    },
                  )
                )
              ],
            ),
        ),
        padding: EdgeInsets.all(15.0),
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15)
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    final operations = Provider.of<Operations>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/login");
            },
          )
        ],
      ),
      backgroundColor: Colors.blue[100],
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue[900], Colors.blue[100]],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(),
                  Container(
                    //color: Colors.blue[600],
                    width: 175.0,
                    height: 125.0,
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, top: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Saldo em conta: ",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'R\$ ${operations.getValue()}',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          width: 175,
                          height: 57,
                          decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)
                            ),
                          ),
                          child: FlatButton(
                            child: Text(
                                "Adc crédito",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0
                                )
                            ),
                            onPressed: () {
                              _showModalAddCredit();
                            },
                          )
                      ),
                      SizedBox(height: 11),
                      Container(
                          width: 175,
                          height: 57,
                          decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)
                            ),
                          ),
                          child: FlatButton(
                              child: Text(
                                "Adc débito",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0
                                ),
                              ),
                              onPressed: (){
                                _showModalAddDebit();
                              }
                          )
                      ),
                    ],
                  )
                ],
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Text(
                      "Entradas e saídas",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Text(
                              "Movimentação Mensal: ",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)  
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Gastos: ${operations.getDebit()}',
                            style: TextStyle(fontSize: 17),  
                          ),
                          Text(
                            'Lucros: ${operations.getCredit()}',
                            style: TextStyle(fontSize: 17),  
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[200],
        shape: CircularNotchedRectangle(),
        child: Container(height: 40.0,)
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
            Icons.history,
            color: Colors.blue,
        ),
        onPressed: () {print("teste");}
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}