import 'dart:io';
import 'dart:math';

/*Q1: Write a program that takes a list of numbers for example
a = [5, 10, 15, 20, 25]
and makes a new list of only the first and last elements of the given list. For practice, write this
code inside a function.*/
List<int> extractFirstAndLast(List<int> inputList) {
  if (inputList.isEmpty) {
    throw ArgumentError("Input list is empty");
  }

  List<int> result = [inputList.first, inputList.last];
  return result;
}

/* Q2: Write a program that asks the user how many Fibonnaci numbers to generate and then
generates them. Take this opportunity to think about how you can use functions.
Make sure to ask the user to enter the number of numbers in the sequence to generate*/

int fibonacci(int n) {
  if (n <= 0) {
    ArgumentError("Invalid input. please enter a positive number.");
  }
  if (n == 1) {
    return 0;
  } else if (n == 2) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}


/* Q3. Write a program (function) that takes a list and returns a new list that contains all the elements
of the first list minus all the duplicates.
*/

List<int> removeDuplicates(List<int> inputList) {
  Set<int> uniqueElements = Set<int>();
  List<int> result = [];

  for (int elements in inputList) {
    if (!uniqueElements.contains(elements)) {
      uniqueElements.add(elements);
      result.add(elements);
    }
  }

  return result;
}

/* Q4. Write a program (using functions!) that asks the user for a long string containing multiple
words. Print back to the user the same string, except with the words in backwards order.
For example, say I type the string:
 My name is Michele
Then I would see the string:
 Michele is name My
*/

String reverseWordsInString(String inputString) {
  List<String> words = inputString.split(" ");
  List<String> reversedWords = words.reversed.toList();

  String reversedString = reversedWords.join(" ");
  return reversedString;
}



/* Q5. Write a password generator in Dart. Be creative with how you generate passwords - strong
passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols. The
passwords should be random, generating a new password every time the user asks for a new
password. Include your run-time code in a main method.
Ask the user how strong they want their password to be. For weak passwords, pick a word or
two from a list.
*/

String generateRandomPassword(int length) {
  final random = Random();
  const String lowercaseChars = 'abcdefghijklmnopqrstuvwxyz';
  const String uppercaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String digitChars = '0123456789';
  const String symbolChars = '!@#\$%^&*()-_=+[]{}|;:,.<>?';

  String allChars = lowercaseChars + uppercaseChars + digitChars + symbolChars;
  String password = '';

  for (int i = 0; i < length; i++) {
    int index = random.nextInt(allChars.length);
    password += allChars[index];
  }

  return password;
}

String generateWeakPassword() {
  final List<String> weakPasswords = ['password', '123456', 'qwerty', 'letmein'];
  final random = Random();
  return weakPasswords[random.nextInt(weakPasswords.length)];
}



/*
void main() {
 */
/* List<int> a = [5, 10, 15, 20, 25];

  try {
    List<int> extractedList = extractFirstAndLast(a);
    print("First and last elements: $extractedList");
  } catch (e) {
    print(e);
  }*//*


  */
/*print("Enter a fibonacci number to print");
  String userInput = stdin.readLineSync() ?? "";

  try {
    int n = int.parse(userInput);
    if (n <= 0) {
      print("Please enter a positive integer.");
    } else {
      print("Fibonacci sequence of $n numbers:");
      for (int i = 1; i <= n; i++) {
        int fib = fibonacci(i);
        print(fib);
      }
    }
  } catch(e) {
    print("Invalid input. Please enter a valid positive number.");
  }*//*



  print("Password Generator");

  while (true) {
    print("\nEnter password strength (weak/medium/strong):");
    String strength = stdin.readLineSync()?.toLowerCase() ?? "";

    if (strength == 'weak') {
      String weakPassword = generateWeakPassword();
      print("Generated Weak Password: $weakPassword");
    } else if (strength == 'medium') {
      String password = generateRandomPassword(10);
      print("Generated Medium Password: $password");
    } else if (strength == 'strong') {
      String password = generateRandomPassword(16);
      print("Generated Strong Password: $password");
    } else {
      print("Invalid input. Please enter 'weak', 'medium', or 'strong'.");
    }

    print("Generate another password? (yes/no):");
    String response = stdin.readLineSync()?.toLowerCase() ?? "";
    if (response != 'yes') {
      break;
    }
  }
}
*/
