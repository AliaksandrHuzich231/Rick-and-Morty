bool _isExactType<X, Y>() => X == Y;

bool isSameTypes<X, Y>() {
  return _isExactType<X, Y>() || _isExactType<X, Y?>();
}
