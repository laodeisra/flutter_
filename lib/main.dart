import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APLIKASI INPUT DATA DIRI',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const InputScreen(),
    );
  }
}

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _ttlController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  var bgColor = const Color.fromARGB(255, 7, 137, 188);
  var latrColor = const Color.fromARGB(255, 10, 137, 72);

  String _displayText = '';

  void _submitData() {
    final nim = _nimController.text;
    final name = _nameController.text;
    final ttl = _ttlController.text;
    final alamat = _alamatController.text;

    setState(() {
      _displayText = 'Nama: $name\nNim: $nim\nTtl: $ttl\nAlamat: $alamat';
    });

    _nimController.clear();
    _nameController.clear();
    _ttlController.clear();
    _alamatController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APLIKASI INPUT DATA DIRI'),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            color: latrColor,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'INPUT DATA',
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'NAMA',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  TextField(
                    controller: _nimController,
                    decoration: const InputDecoration(
                      labelText: 'NIM',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.badge,
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: _ttlController,
                    decoration: const InputDecoration(
                      labelText: 'TEMPAT TANGGAL LAHIR',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.map_sharp,
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  TextField(
                    controller: _alamatController,
                    decoration: const InputDecoration(
                      labelText: 'ALAMAT',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),

                    // // versi 2

                    // decoration: InputDecoration(
                    //   labelText: 'Tempat Tanggal Lahir',
                    //   labelStyle: TextStyle(color: Colors.white),
                    //   enabledBorder: UnderlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.white),
                    //   ),
                    // ),
                    // style: TextStyle(color: Colors.white),

                    // style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitData,
                    child: const Text('Submit'),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  Text(
                    _displayText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
