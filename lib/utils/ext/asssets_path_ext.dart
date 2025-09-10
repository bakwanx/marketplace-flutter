extension ImagePath on String? {
  String svg() {
    return 'assets/$this.svg';
  }

  String png() {
    return 'assets/$this.png';
  }

  String jpg() {
    return 'assets/$this.jpg';
  }
}
