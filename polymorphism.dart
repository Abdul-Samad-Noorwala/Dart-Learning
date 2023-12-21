void main() {
  var obj = SULANZA();
  obj.going();
}

class GS {
  going() {
    String go = "hungry peoples goes to Gulam Shabbir";
    print(go);
  }
}

class SULANZA extends GS {
  going() {
    super.going();
    String go = "knowlegable peoples goes to sulanza";
    print(go);
  }
}
