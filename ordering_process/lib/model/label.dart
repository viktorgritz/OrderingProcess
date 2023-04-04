class Label {
  late String title;
  late String size;
  late String weight;
  late double preis;

  Label(
    this.title,
    this.size,
    this.weight,
    this.preis,
  );

  Label.empty() {
    title = '';
    size = '';
    weight = '';
    preis = 0;
  }
}
