import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:union/models/customerModel.dart';
import '../common/commonWidgets.dart';
import '../controller/profileController.dart';
class profile extends StatefulWidget {
  const profile({super.key});
  @override
  State<profile> createState() => profileState();
}

class profileState extends State<profile> {
  profileController controller = profileController();

  final TextEditingController editcontroller = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    profileController controller = profileController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: controller.fetchCustomer(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final customer = snapshot.data![index];
                  return ListTile(
                      title: Text(customer.name),
                      subtitle: Text(customer.phone.toString()),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(customer.nid.toString()),
                          IconButton(
                              onPressed: () async{
                                await controller.deleteCustomer(customer.id);
                                setState(() {

                                });
                              }, icon: const Icon(Icons.delete)),
                          IconButton(
                              onPressed: () {
                                nameController.text = customer.name;
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                          title: const Text('Update your name'),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              TextFormField(
                                                controller: nameController,
                                                decoration: const InputDecoration(
                                                    labelText: 'Name',
                                              ),
                                              )
                                            ],
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                controller.upDateCustomer(customer.id,{'Name': nameController.text} );
                                                setState(() {

                                                });
                                                },
                                                child: Text("Update"))
                                          ]);
                                    });
                              },
                              icon: const Icon(Icons.edit)),
                        ],
                      ));
                });
          }),
    );
  }

}
