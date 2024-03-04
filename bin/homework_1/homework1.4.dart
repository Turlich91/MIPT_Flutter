/*
Задача 4
Есть метод lengthOfLastWord, который принимает строку. Нужно вернуть число, 
которое является длинной последнего слова в строке. Строка может содержать 
любые символы, также, между словами и символами может быть много пробелов
*/
void main(List<String> arguments) {
  String text = 'London    is the capital of Great Britan, baby!   !!!!';
  print(lengthOfLastWord(text));
}

int lengthOfLastWord(String text) {
  List textList = <String>[];
  List cleanTextList = <String>[];

  textList = text.split(' ');
  for (int i = 0; i < textList.length; i++) {
    if (textList[i].contains(RegExp(r'[A-z]'))) {
      cleanTextList.add(textList[i].replaceAll(RegExp(r'[\W]'), ''));
    }
  }
  return cleanTextList[cleanTextList.length - 1].length;
}
