import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String foodRadio = "";
  bool Checkbox = false;
  bool Checkbox1 = false;
  bool Checkbox2 = false;
  @override
  Widget build(BuildContext context) {

    
    return  Scaffold(
      appBar: AppBar(
        title: Text("wongsapat"),
        backgroundColor: const Color.fromARGB(255, 0, 225, 255),
      ),
      body: Column(
        children: [
          createRadioMenu("ต้มจืด", "ต้มจืด", "60 บาท"),
          createRadioMenu("กระเพรา", "กระเพรา", "40 บาท"),
          createRadioMenu("ผัดไท", "ผัดไท", "50 บาท"),
          createRadioMenu("เครื่องแกง", "เครื่องแกงหมูกรอบ", "50 บาท"),
          createRadioMenu("หมูทอด", "หมูทอด", "50 บาท"),
          createRadioMenu("ผัดซีอิ้ว", "ผัดซีอิ้ว", "45 บาท"),
          const Divider(),
          CheckboxListTile(
            title: const Text("เพิ่มไข่ดาว + 5บาท"),
            value: Checkbox, 
            onChanged: ((value) {
            setState(() {
              Checkbox = value!;
            });
          })),
          CheckboxListTile(
            title: const Text("เพิ่มข้าว + 5บาท"),
            value: Checkbox1, 
            onChanged: ((value) {
            setState(() {
              Checkbox1 = value!;
            });
          })),
           CheckboxListTile(
            title: const Text("เพิ่มกับ + 10บาท"),
            value: Checkbox2, 
            onChanged: ((value) {
            setState(() {
              Checkbox2 = value!;
            });
          }))
          
          // RadioListTile(
          //    activeColor: const Color.fromARGB(255, 244, 3, 3),
          //   value: "กระเพรา",
          //   title: const Text("กระเพรา"),
          //   subtitle: const Text("40 บาท"),
          //   secondary: const Icon(Icons.shopping_bag),
          //    groupValue: foodRadio,
          //     onChanged: (value) {
          //       setState(() {
          //         foodRadio = value!;
          //       });
          //       print(foodRadio);
          // },),
          // RadioListTile(
          //    activeColor: const Color.fromARGB(255, 244, 3, 3),
          //   value: "ผัดไท",
          //   title: const Text("ผัดไท"),
          //   subtitle: const Text("50 บาท"),
          //   secondary: const Icon(Icons.shopping_bag),
          //    groupValue: foodRadio,
          //     onChanged: (value) {
          //       setState(() {
          //         foodRadio = value!;
          //       });
          //       print(foodRadio);
          // },),
          // RadioListTile(
          //    activeColor: const Color.fromARGB(255, 244, 3, 3),
          //   value: "เครื่องแกง",
          //   title: const Text("เครื่องแกงหมูกรอบ"),
          //   subtitle: const Text("50 บาท"),
          //   secondary: const Icon(Icons.shopping_bag),
          //    groupValue: foodRadio,
          //     onChanged: (value) {
          //       setState(() {
          //         foodRadio = value!;
          //       });
          //       print(foodRadio);
          // },),
          // RadioListTile(
          //    activeColor: const Color.fromARGB(255, 244, 3, 3),
          //   value: "หมูทอด",
          //   title: const Text("หมูทอด"),
          //   subtitle: const Text("50 บาท"),
          //   secondary: const Icon(Icons.shopping_bag),
          //    groupValue: foodRadio,
          //     onChanged: (value) {
          //       setState(() {
          //         foodRadio = value!;
          //       });
          //       print(foodRadio);
          // },),
          // RadioListTile(
          //    activeColor: const Color.fromARGB(255, 244, 3, 3),
          //   value: "ผัดซีอิ้ว",
          //   title: const Text("ผัดซีอิ้ว"),
          //   subtitle: const Text("45 บาท"),
          //   secondary: const Icon(Icons.shopping_bag),
          //    groupValue: foodRadio,
          //     onChanged: (value) {
          //       setState(() {
          //         foodRadio = value!;
          //       });
          //       print(foodRadio);
          // },)
          
        ],
      ),
      
    );
  }

  RadioListTile<String> createRadioMenu(String val, String title, String subtitle) {
    return RadioListTile(
          activeColor: const Color.fromARGB(255, 244, 3, 3),
          // fillColor: MaterialStatePropertyAll(Colors.green),
          // tileColor: Color.fromARGB(26, 0, 225, 255),
          value: val,
          title:  Text(title),
          subtitle:  Text(subtitle),
          secondary:  const Icon(Icons.shopping_bag),
           groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
              });
              print(foodRadio);
        },);
  }
}


