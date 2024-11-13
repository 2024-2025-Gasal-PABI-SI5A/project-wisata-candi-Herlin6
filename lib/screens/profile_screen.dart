import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSignedIn = true;
  String fullName = "Herlin Dwi Vitaloka";
  String userName = "Herlin";
  int favoriteCandiCount = 0;

  //sign in funciton
  void SignIn() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  //sign out function
  void SignOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                height: 200, width: double.infinity, color: Colors.deepPurple),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  //Profile header
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.deepPurple, width: 2),
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage("images/placeholder_image.png"),
                            ),
                          ),
                          if (isSignedIn)
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.deepPurple[50],
                                ))
                        ],
                      ),
                    ),
                  ),
                  //Profile info
                  // Baris 1 profile info
                  const SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.deepPurple[100],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: const Row(
                          children: [
                            Icon(Icons.lock, color: Colors.amber),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Pengguna",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Text(
                        ": $userName",
                        style: const TextStyle(fontSize: 18),
                      )),
                    ],
                  ),
                  // Baris 2 nama info
                  const SizedBox(
                    height: 4,
                  ),
                  Divider(
                    color: Colors.deepPurple[100],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: const Row(
                          children: [
                            Icon(Icons.person, color: Colors.blue),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Nama",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Text(
                        ": $fullName",
                        style: const TextStyle(fontSize: 18),
                      )),
                      if (isSignedIn) const Icon(Icons.edit)
                    ],
                  ),
                  // Baris 3 favorite info
                  const SizedBox(
                    height: 4,
                  ),
                  Divider(
                    color: Colors.deepPurple[100],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: const Row(
                          children: [
                            Icon(Icons.favorite, color: Colors.red),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Favorite",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Text(
                        ": $favoriteCandiCount",
                        style: const TextStyle(fontSize: 18),
                      )),
                    ],
                  ),
                  //Profile action
                  const SizedBox(
                    height: 4,
                  ),
                  Divider(
                    color: Colors.deepPurple[100],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  isSignedIn
                      ? TextButton(
                          onPressed: SignOut, child: const Text("Sign Out"))
                      : TextButton(
                          onPressed: SignIn, child: const Text("Sign In"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
