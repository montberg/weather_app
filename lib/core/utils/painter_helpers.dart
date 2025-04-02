class PainterHelper {
  static double scaledX(
    double point,
    double minSize,
    double maxSize,
    double minPoint,
    double maxPoint,
  ) {
    return maxSize -
        ((point - minPoint) / (maxPoint - minPoint)) * (maxSize - minSize);
  }
}
