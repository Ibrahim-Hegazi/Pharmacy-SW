import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WriteNotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(
          238, 238, 238, 1), // Set background color of the page
      appBar: AppBar(
        backgroundColor: Colors.grey[200], // Set background color of the AppBar
        title: Text('Write Notes Page'),
        leading: Icon(
          Icons.note_add,
          size: 50, // Set the size of the icon
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20), // Add some space between buttons and top
            Text(
              "Please Write Your Notes",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
                height: 20), // Add some space between message and container
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        hintText: "Note Title",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      maxLines: 5, // Allow multiple lines for the note body
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        hintText: "Note Body",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
                height: 20), // Add some space between container and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF05DD88),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF05DD88),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
