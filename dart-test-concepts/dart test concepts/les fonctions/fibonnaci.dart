int fibonnaci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonnaci(n - 1) + fibonnaci(n - 2);
}

void main(List<String> args) {
  var resultat = fibonnaci(20);

  print(resultat);
}
