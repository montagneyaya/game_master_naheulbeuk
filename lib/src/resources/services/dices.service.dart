import 'dart:math';

class Dices {
  d2() {
    return Random().nextInt(2) + 1;
  }

  d4() {
    return Random().nextInt(4) + 1;
  }

  d6() {
    return Random().nextInt(6) + 1;
  }

  d8() {
    return Random().nextInt(8) + 1;
  }

  d10() {
    return Random().nextInt(10) + 1;
  }

  d12() {
    return Random().nextInt(12) + 1;
  }

  d20() {
    return Random().nextInt(20) + 1;
  }

  d100() {
    return Random().nextInt(100) + 1;
  }
}
