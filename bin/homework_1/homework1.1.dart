/*
Задача 1
Есть метод findFirstUniqueNumber, который принимает в себя массив целочисленных 
значений. Задача: найти в этом массиве первый уникальный элемент, 
если такой есть. В противном случае вернуть -1
*/
void main(List<String> arguments) {
  final array = [1, 7, 1, 3, 7, 7, 4, 9];
  print(findFirstUniqueNumber(array));
}

int findFirstUniqueNumber(List<int> array) {
  Map<int, int> newMap = {};
  for (int i = 0; i < array.length; i++) {
    if (newMap.containsKey(array[i])) {
      newMap[array[i]] = 0;
    } else {
      newMap[array[i]] = 1;
    }
  }
  var num = newMap.keys
      .firstWhere((element) => newMap[element] == 1, orElse: () => -1);
  return num;
}
