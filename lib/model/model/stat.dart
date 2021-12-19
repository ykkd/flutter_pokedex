abstract class Stat {
  int baseStat;

  Stat({required this.baseStat});
}

class Hp extends Stat {
  Hp(int baseStat) : super(baseStat: baseStat);
}

class Attack extends Stat {
  Attack(int baseStat) : super(baseStat: baseStat);
}

class Defense extends Stat {
  Defense(int baseStat) : super(baseStat: baseStat);
}

class SpecialAttack extends Stat {
  SpecialAttack(int baseStat) : super(baseStat: baseStat);
}

class SpecialDefense extends Stat {
  SpecialDefense(int baseStat) : super(baseStat: baseStat);
}

class Speed extends Stat {
  Speed(int baseStat) : super(baseStat: baseStat);
}

class Undefined extends Stat {
  Undefined() : super(baseStat: 0);
}
