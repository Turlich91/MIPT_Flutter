/*
Задача 2
Есть метод removeDuplicatedFromSortedList. Он принимает в себя массив array. 
Нужно вернуть массив, который будет тоже отсортирован, 
но в котором будут удалены все дубликаты элементов исходного массива
*/
void main(List<String> arguments) {
  final array = [1, 7, 1, 9, 7, 7, 3];
  print(removeDuplicatedFromSortedList(array));
}

List removeDuplicatedFromSortedList(List<int> array) {
  final uniqueArray = array.toSet().toList();
  return uniqueArray;
}
