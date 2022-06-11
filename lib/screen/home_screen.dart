import 'package:flutter/cupertino.dart'; // 안드로이드, 구글 관련
import 'package:flutter/material.dart'; // ios 관련

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// 그래 위젯을 그릴 때 부분 부분을 나누어서 생각을 하면 좀 수월하겠다
class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100], // Colors.color[색 진하기 설정 가능 100 ~ 900]
      body: SafeArea(
        bottom: false,
        child: Container(
          width: MediaQuery.of(context).size.width, // 가운데로 오게끔 하는 코드
          child: Column(
            children: [
              _TopPart(
                selectedDate: selectedDate,
                onPressed: onHeartPressed,
              ),
              _BottomPart(),
            ],
          ),
        ),
      ),
    );
  }

  onHeartPressed() {
    final DateTime now = DateTime.now();

      // dialog
      showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              height: 300.0,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: selectedDate, // 초기 데이터 타임
                maximumDate: DateTime( // 최대 날짜를 정해줌
                    now.year,
                    now.month,
                    now.day
                ),
                onDateTimeChanged: (DateTime date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
              ),
            ),
          );
        },
      );
  }

}

// _는 private 역할
// 코드를 깔끔하게 하기위해 위젯을 분리함

class _TopPart extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onPressed;

  _TopPart({required this.selectedDate, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'U&I',
            style: TextStyle(
                color: Colors.white, fontFamily: 'parisienne', fontSize: 80.0),
          ),
          Column(
            children: [
              const Text(
                '우리 처음 만난 날',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'himelody',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
              Text(
                '${selectedDate.year}.${selectedDate.month}.${selectedDate.day}',
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'himelody',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
            ],
          ),
          IconButton(
            iconSize: 60.0,
            onPressed: onPressed,
            icon: const Icon(
              Icons.favorite,
              color: Colors.redAccent,
            ),
          ),
          Text(
            'D+${DateTime(now.year, now.month, now.day).difference(selectedDate).inDays + 1}',
            style: const TextStyle(
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
