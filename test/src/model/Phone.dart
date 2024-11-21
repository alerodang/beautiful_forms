class Phone {
  late String number;
  String prefix = '34';

  Phone(String number) {
    if (number.length == 9) {
      this.number = number;
    } else {
      this.prefix = number.substring(0,2);
      this.number = number.substring(2,11);
    }
  }

  String formatted() {
    return ('+${this.prefix} ${this.number.substring(0, 3)} ${this.number.substring(3, 6)} ${this.number.substring(6, 9)}');
  }
}