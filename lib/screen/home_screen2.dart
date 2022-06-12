import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const 로 위젯을 만들면 해당 위젯은 재빌드 되지않고 실행된다. !!!
            // 즉 앱이 실행 될 때 단 한번만 실행된다. 성능적으로 굉장히 효율적이게 된다.
            const TestWidget(label: 'test1'),
            const TestWidget(label: 'test2'),
            // 빌드 타임에 알 수 없는 위젯들은 const 를 사용하지 못한다.
            ElevatedButton(
                onPressed: () {
                  setState((){});
                },
                child: Text(
                  '빌드!',
                )
            ),
          ],
        ),
      ),
    );
  }
}

class TestWidget extends StatelessWidget {
  final String label;

  const TestWidget({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('$label 빌드 실행');
    return Container(
      child: Text(
        label,
      ),
    );
  }
}
