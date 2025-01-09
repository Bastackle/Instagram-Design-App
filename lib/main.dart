import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _homeState = false;
  bool _searchState = false;
  bool _postState = false;
  bool _videoState = false;
  bool _userState = false;
  int _indexScreen = 0;
  final List<StatefulWidget> mobileScreen = [
    _homePage(),
    _searchPage(),
    _postPage(),
    _videoPage(),
    _userPage()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF121212),
        //------------------- AppBar -------------------
        appBar: AppBar(
          backgroundColor: const Color(0xFF121212),
          title: const Text(
            'Instagram',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'Pacifico',
            ),
          ),
          actions: const [
            Icon(
              Icons.favorite_outline,
              color: Color(0xFFF4F4FB),
              size: 33,
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
            ),
            Icon(
              Icons.chat_bubble_outline,
              color: Color(0xFFF4F4FB),
              size: 35,
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
            ),
          ],
        ),
        //------------------- body -------------------
        body: mobileScreen[_indexScreen],
        //------------------- bottomNavigationBar -------------------
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            color: const Color(0xFF121212),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _indexScreen = 0;
                    _homeState = !_homeState;
                    _searchState = false;
                    _postState = false;
                    _videoState = false;
                    _userState = false;
                  });
                },
                child: Icon(
                  _homeState ? Icons.home : Icons.home_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _indexScreen = 1;
                    _homeState = false;
                    _searchState = !_searchState;
                    _postState = false;
                    _videoState = false;
                    _userState = false;
                  });
                },
                child: Icon(
                  _searchState ? Icons.search : Icons.search_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _indexScreen = 2;
                    _homeState = false;
                    _searchState = false;
                    _postState = !_postState;
                    _videoState = false;
                    _userState = false;
                  });
                },
                child: Icon(
                  _postState ? Icons.add_box : Icons.add_box_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _indexScreen = 3;
                    _homeState = false;
                    _searchState = false;
                    _postState = false;
                    _videoState = !_videoState;
                    _userState = false;
                  });
                },
                child: Icon(
                  _videoState
                      ? Icons.slow_motion_video
                      : Icons.slow_motion_video_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _indexScreen = 4;
                    _homeState = false;
                    _searchState = false;
                    _postState = false;
                    _videoState = false;
                    _userState = !_userState;
                  });
                },
                child: Icon(
                  _userState
                      ? Icons.account_circle
                      : Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _homePage extends StatefulWidget {
  const _homePage({super.key});

  @override
  State<_homePage> createState() => _homePageState();
}

class _homePageState extends State<_homePage> {
  bool _favState = false;
  bool _shareState = false;
  int _like = 170;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPeizRDl7zLP0wgv6kPflpnvHZLD1r7l0Acw&s'),
                  radius: 45,
                ),
              ),
              SizedBox(width: 25),
              Expanded(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp1C31wE_XiM6XpAPhjBz_kByLU9VDmUT-Og&s'),
                  radius: 45,
                ),
              ),
              SizedBox(width: 25),
              Expanded(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.scdn.co/image/ab6761610000e5ebf3bb04995cb61f04936424ee'),
                  radius: 45,
                ),
              ),
              SizedBox(width: 25),
              Expanded(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.billboard.com/wp-content/uploads/2021/11/YOASOBI-billboard-japan-billboard-1548-1635793583.jpg'),
                  radius: 45,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPeizRDl7zLP0wgv6kPflpnvHZLD1r7l0Acw&s'),
                    radius: 20,
                  ),
                  title: Row(
                    children: [
                      Text('fujiikaze',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      SizedBox(width: 5),
                      Icon(Icons.check_circle, color: Colors.blue, size: 20),
                    ],
                  ),
                  trailing: Icon(Icons.more_vert, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  height: 425,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://i.scdn.co/image/ab67616d0000b27336f72e16774f67f6a4df173d'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _favState = !_favState;
                              });
                            },
                            child: Icon(
                                _favState
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: _favState ? Colors.pink : Colors.white,
                                size: 35),
                          ),
                          SizedBox(width: 10),
                          Text('${_favState ? _like + 1 : _like}',
                              style: TextStyle(
                                  color: _favState ? Colors.pink : Colors.white,
                                  fontSize: 20)),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _shareState = !_shareState;
                              });
                            },
                            child: Icon(
                                _shareState
                                    ? Icons.share
                                    : Icons.share_outlined,
                                color:
                                    _shareState ? Colors.green : Colors.white,
                                size: 35),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'fujiikaze Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada.',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _searchPage extends StatefulWidget {
  const _searchPage({super.key});

  @override
  State<_searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<_searchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 10, right: 10),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff212121),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _postPage extends StatefulWidget {
  const _postPage({super.key});

  @override
  State<_postPage> createState() => _postPageState();
}

class _postPageState extends State<_postPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the Post Page',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _videoPage extends StatefulWidget {
  const _videoPage({super.key});

  @override
  State<_videoPage> createState() => _videoPageState();
}

class _videoPageState extends State<_videoPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the Video Page',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _userPage extends StatefulWidget {
  const _userPage({super.key});
  @override
  State<_userPage> createState() => _userPageState();
}

class _userPageState extends State<_userPage> {
  final _key = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Instagram',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 50),
              TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email address is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff212121),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Email address',
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  )),
              SizedBox(height: 30),
              TextFormField(
                  controller: pwdController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff212121),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Password',
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  )),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    print('Email: ${emailController.text}');
                    print('Password: ${pwdController.text}');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  minimumSize: Size(400, 50),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}