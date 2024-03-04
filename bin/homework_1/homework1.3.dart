/*
Задача 3
Есть метод findNod. Он принимает два целых числа. Используя алгоритм Евклида, 
или любой другой алгоритм, нужно найти наибольший общий делитель этих двух чисел.
*/
void main(List<String> arguments) {
  final a = 12;
  final b = 14;
  print(findNod(a, b));
}

int findNod(int a, int b) {
  if (a != 0 && b != 0) {
    if (a > b) {
      a = a % b;
      return a;
    } else {
      b = b % a;
      return b;
    }
  } else {
    return a + b;
  }
}
