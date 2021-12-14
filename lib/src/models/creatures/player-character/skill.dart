class Skill {
  String skill;
  String described;
  bool selected;

  Skill(this.skill, this.described, this.selected);

  void isSelect(bool _check) {
    this.selected = _check;
  }

  @override
  String toString() {
    return this.skill;
  }
}
