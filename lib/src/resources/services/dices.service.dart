import 'dart:math';

class Dices {
  int d2() {
    return Random().nextInt(2) + 1;
  }

  int d4() {
    return Random().nextInt(4) + 1;
  }

  int d6() {
    return Random().nextInt(6) + 1;
  }

  int d8() {
    return Random().nextInt(8) + 1;
  }

  int d10() {
    return Random().nextInt(10) + 1;
  }

  int d12() {
    return Random().nextInt(12) + 1;
  }

  int d20() {
    return Random().nextInt(20) + 1;
  }

  int d100() {
    return Random().nextInt(100) + 1;
  }
}
