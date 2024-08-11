import 'package:flutter/material.dart';

class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {

  final _controllerAlcool = TextEditingController();
  final _controllerGasolina = TextEditingController();
  String _textoResultado = "resultado!!!";

  void _calcular(){

    double? precoAlcool = double.tryParse( _controllerAlcool.text );
    double? precoGasolina = double.tryParse( _controllerGasolina.text );

    if( precoAlcool == null || precoGasolina == null ){
      setState(() {
        _textoResultado = "numero invalido, digite numeros maiores que 0 e utilize (.)";
      });
    }else{
      if( (precoAlcool/precoGasolina) >= 0.7){
        setState(() {
          _textoResultado = "Gasolina!!!";
        });
      }else{
        setState(() {
          _textoResultado = "Alcool!!!";
        });
      }
    }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "C O M B U S T I V E L",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.white),
        ),

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Image.asset("images/logo.png"),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Saiba qual a melhor opção para abastecimento do seu carro",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
            TextField(
              controller: _controllerAlcool,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Preço Alcool, ex 1.59",
                floatingLabelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
              style: const TextStyle(
                fontSize: 25,
                color: Colors.green,
              ),
            ),
            TextField(
              controller: _controllerGasolina,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Preço Gasolina, ex 5.59",
                floatingLabelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
              style: const TextStyle(
                fontSize: 25,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)
                  ),
                  minimumSize: const Size(300, 50),
                ),
                onPressed: _calcular,
                child: const Text("Calcular",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                _textoResultado,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
