import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// 그래 위젯을 그릴 때 부분 부분을 나누어서 생각을 하면 좀 수월하겠다

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100], // Colors.color[색 진하기 설정 가능 100 ~ 900]
      body: SafeArea(
        bottom: false,
        child: Container(
          width: MediaQuery.of(context).size.width, // 가운데로 오게끔 하는 코드
          child: Column(
            children: const [
              _TopPart(),
              _BottomPart(),
            ],
          ),
        ),
      ),
    );
  }
}

// _는 private 역할
class _TopPart extends StatelessWidget {
  const _TopPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Text(
            'U&I',
            style: TextStyle(
                color: Colors.white, fontFamily: 'parisienne', fontSize: 80.0),
          ),
          const Text(
            '우리 처음 만난 날',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'himelody',
                fontWeight: FontWeight.bold,
                fontSize: 30.0),
          ),
          const Text(
            '2021.12.27',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'himelody',
                fontWeight: FontWeight.bold,
                fontSize: 30.0),
          ),
          IconButton(
            iconSize: 60.0,
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.redAccent,
            ),
          ),
          const Text(
            'D+1',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'himelody',
                fontWeight: FontWeight.w600,
                fontSize: 60.0),
          ),
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Image.asset('asset/img/middle_image.png'));
  }
}
