import 'package:flutter/material.dart';

import '../models/list_mahasiswa.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Mahasiswa> mahasiswaList = [
      Mahasiswa(nim: 'STI202102270', nama: 'YOGA SURYA PRATAMA'),
      Mahasiswa(nim: 'STI202102273', nama: 'AJENG DWI FEBRIANA'),
      Mahasiswa(nim: 'STI202102274', nama: 'YUDHA'),
      Mahasiswa(nim: 'STI202102276', nama: 'AKHLIS NUR AZIZAH'),
      Mahasiswa(nim: 'STI202102277', nama: 'EMI FITRIANI'),
      Mahasiswa(nim: 'STI202102278', nama: 'TIYAN DESI WULANDARI'),
      Mahasiswa(nim: 'STI202102279', nama: 'EFRI HAFITS FIRMANSYAH'),
      Mahasiswa(nim: 'STI202102283', nama: 'ARA SETIAWAN'),
      Mahasiswa(nim: 'STI202102284', nama: 'ROBBY ANDREY SETIAWAN'),
      Mahasiswa(nim: 'STI202102286', nama: 'NADYA DWI PERTIWI'),
      Mahasiswa(nim: 'STI202102287', nama: 'ALWI JAFAR SODIK'),
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: mahasiswaList.length,
        itemBuilder: (context, index) {
          final mahasiswa = mahasiswaList[index];
          return Container(
            height: 140,
            margin:
                const EdgeInsets.only(left: 16, top: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(
              color: mahasiswa.nim == 'STI202102278'
                  ? const Color.fromARGB(255, 153, 204, 245)
                  : Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(100, 85, 137, 204),
                  blurRadius: 10.0,
                  spreadRadius: 5.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/logo-swu.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  mahasiswa.nama,
                  style: const TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  mahasiswa.nim,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
