import 'dart:io';

void main() {
  int n = 9, i, j;

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j < i; j++) {
      stdout.write(" ");
    }
    for (int k = i; k <= n; k++) {
      stdout.write("$k ");
    }
    stdout.writeln();
  }
  for (int i = n - 1; i >= 1; i--) {
    for (int j = 1; j < i; j++) {
      stdout.write(" ");
    }
    for (int k = i; k <= n; k++) {
      stdout.write("$k ");
    }
    stdout.writeln();
  }
}