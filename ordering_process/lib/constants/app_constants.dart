class FormRegex {
  static const plainTextRegex = '[^a-zA-Z]';
  static const streetRegex = '[^a-zA-Z-ÄÖÜäöüß\ ]';
  static const numberRegex = '[^0-9a-z]';
  static const postcodeRegex = '[^0-9]';
  static const emailRegex =
      '[A-Za-z0-9\-\_\.\+]{1,64}@[A-Za-z0-9\-\_\.]+\.[a-zA-Z]+';
}
