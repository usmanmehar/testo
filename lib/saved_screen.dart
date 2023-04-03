import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testo/isarNoteSaveModel.dart';
import 'package:testo/saved_controller.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  SavedController savedController = Get.put(SavedController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Saved Notes')),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<SaveNote>>(
              future: savedController.displayNotes(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Card(
                          shadowColor: Colors.green,
                          elevation: 2,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                snapshot.data![index].urduName.toString(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: const TextStyle(
                                    fontSize: 28, fontFamily: 'Jameel Regular'),
                              ),
                              Text(
                                snapshot.data![index].englishName.toString(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: const TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
