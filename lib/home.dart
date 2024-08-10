import 'package:flutter/material.dart';

class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

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
      body: Container(
        child: SingleChildScrollView(
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
                  onPressed: (){},
                  child: const Text("Calcular",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    ),
                  ),
          
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                    "Resultado",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
