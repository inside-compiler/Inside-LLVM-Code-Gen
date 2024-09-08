#include <stdio.h>
#include <stdbool.h>

int64_t add(int64_t a , int64_t b, int64_t c, int64_t d, int64_t e, int64_t f, int64_t g) {
  return a + b + c + d + e + f + g;
}

int main() {
  int64_t a = 9;
  int64_t b = 10;
  int64_t c = 9;
  int64_t d = 10;
  int64_t e = 9;
  int64_t f = 10;
  int64_t g = 9;
  int cc = add(a, b, c, d, e, f, g);
  return cc;
}