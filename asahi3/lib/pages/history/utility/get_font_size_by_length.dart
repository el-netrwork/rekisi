double getFontSizeByLength(String text){
  // 150文字が上限
  final double textSize = text.length > 100
      ? 10
      : text.length > 60
      ? 12
      : 15;
  return textSize;
}