import 'package:flutter/material.dart';
import 'package:flutter_riv_class/data_controller.dart';
import 'package:flutter_riv_class/data_model.dart';
import 'package:flutter_riv_class/data_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DataScreen extends ConsumerWidget {
  DataScreen({super.key});

  var dataProvider = StateProvider<List<DataModel>>((ref) => []);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(dataProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            List<DataModel> allUsers = await ApiService().getUsers();
            ref.read(dataProvider.notifier).update((state) => allUsers);
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      appBar: AppBar(
        title: const Text('users'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => DataWidget(
            name: data[index].name!,
            email: data[index].email!,
            number: data[index].number!),
      ),
    );
  }
}
