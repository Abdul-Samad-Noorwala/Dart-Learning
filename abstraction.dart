void main() {
  run obj = run();
  obj.runs();
}

abstract class subjects {
  maths();
  poc();
  accounting();
}

class panwala extends subjects {
  @override
  accounting() {
    String Acc = " Accounting Sir Name Is Abdullah Fazal";
    print(Acc);
  }

  @override
  maths() {
    String maths = "Maths Sir Name Is Ibrahim Rafiq";
    print(maths);
  }

  @override
  poc() {
    String poc = "P.O.C Sir Name Is Usman Rafiq";
    print(poc);
  }
}

class run extends panwala {
  runs() {
    print(accounting());
    print(maths());
    print(poc());
  }
}
