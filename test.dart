import 'dart:math' as math;

void main(List<String> args) {
  // print(oddOrEvent(4));
  // print(fibonacci(9));
  // print(reverse('hello'));
  // print(leapYear(2000));
  // print(primeNum(10));
  // print(palindrom('anna'));
  // print(factorial(9));
  // print(sort([12, 33, 1, 54, 3]));
  // print(sum([12, 33, 1, 54, 3]));
  // print(minMax([12, 33, 2, 54, 3]));
  // print(vowCons('Alphabit'));
  // print(calc(123));
  // print(words('The program should ignore'));
  // print(duplicate([12, 33, 1, 54, 3, 3, 1, 2, 12]));
  // print(armstrong(153));
  // print(anagrams("О ткровение", "ок  но и ветер"));
  // print(missingNumber([1, 2, 3, 4, 5, 7, 8, 9]));
}

// N - 1
oddOrEvent(int a) {
  if (a % 2 == 0) {
    return ('Event');
  } else {
    return ('Odd');
  }
}

// N - 2
fibonacci(int d) {
  int a = 0;
  int b = 1;
  int c = 0;
  for (var i = 0; i < d; i++) {
    c = a + b;
    a = b;
    b = c;
  }
  return c;
}

// N - 3
reverse(String a) {
  String b = '';
  for (var i = a.length - 1; i >= 0; --i) {
    b += a[i];
  }
  return (b);
}

// N - 4
leapYear(int a) {
  if (a % 4 == 0 && a % 100 != 0 || a % 400 == 0) {
    return ('leap year');
  } else {
    return ('not leap year');
  }
}

// N - 5
primeNum(int a) {
  String ans = '';
  for (var i = 2; i <= a; i++) {
    if (prime(i)) {
      print(i);
      ans = 'Prime numbers';
    }
  }
  return ans;
}

bool prime(int i) {
  for (var j = 2; j < i; j++) {
    if (i % j == 0) {
      return false;
    }
  }
  return true;
}

// N - 6
palindrom(String a) {
  String b = '';
  String c = '';
  for (var i = a.length - 1; i >= 0; --i) {
    if (a[i] != ' ') {
      continue;
    } else {
      b += a[i].toLowerCase();
    }
  }
  for (var i = 0; i < a.length; i++) {
    if (a[i] != ' ') {
      continue;
    } else {
      c += a[i].toLowerCase();
    }
  }
  if (c == b) {
    return 'palindrom';
  } else {
    return 'not';
  }
}

// N - 7
factorial(int a) {
  int b = 1;
  for (var i = 1; i <= a; i++) {
    b *= i;
  }
  return b;
}

// N - 8
sort(List a) {
  for (var i = 0; i < a.length - 1; i++) {
    for (var j = 0; j < a.length - i - 1; j++) {
      if (a[j] > a[j + 1]) {
        int b = a[j];
        a[j] = a[j + 1];
        a[j + 1] = b;
      }
    }
  }
  return a;
}

// N - 9
sum(List<int> n) {
  int count = 0;
  for (var i = 0; i < n.length; i++) {
    count += n[i];
  }
  return count;
}

// N - 10
minMax(List<int> a) {
  int min = a[0];
  int max = a[0];
  for (var i = 0; i < a.length; i++) {
    for (var i = 0; i < a.length; i++) {
      if (a[i] < min) {
        min = a[i];
      }
      if (a[i] > max) {
        max = a[i];
      }
    }
  }
  return 'min: $min \nmax: $max';
}

// N - 11
vowCons(String a) {
  int vow = 0;
  int cons = 0;
  for (var i = 0; i < a.length; i++) {
    var b = a[i].toLowerCase();
    if (b == ' ' || b == ',' || b == '!' || b == '?' || b == '.' || b == ';') {
      continue;
    }
    if (b == 'a' || b == 'e' || b == 'i' || b == 'o' || b == 'u' || b == 'y') {
      vow++;
    } else {
      cons++;
    }
  }
  return 'vowels: $vow \nconsonants: $cons';
}

// N - 12
calc(int a) {
  int count = 0;
  String b = a.toString();
  for (var i = 0; i < b.length; i++) {
    count += int.parse(b[i]);
  }
  return count;
}

// N - 13
words(String a) {
  String b = '';
  for (var i = 0; i < a.length; i++) {
    if (a[i] != ',' &&
        a[i] != '!' &&
        a[i] != '?' &&
        a[i] != '.' &&
        a[i] != ';') {
      b += a[i];
    }
  }
  List c = b.split(' ');
  String max = c[0];
  for (var i = 0; i < c.length; i++) {
    if (c[i] == ' ') {
      continue;
    }
    if (c[i].length > max.length) {
      max = c[i];
    }
  }
  return max;
}

// N - 14
duplicate(List<int> a) {
  List b = [];
  for (var i = 0; i < a.length; i++) {
    for (var j = i + 1; j < a.length; j++) {
      if (a[i] == a[j] && !b.contains(a[i])) {
        b.add(a[i]);
      }
    }
  }
  return b;
}

// N - 15
armstrong(int a) {
  String b = a.toString();
  num c = 0;
  for (var i = 0; i < b.length; i++) {
    c += math.pow(int.parse(b[i]), b.length);
  }
  if (c == a) {
    return 'armstrong';
  } else {
    return 'not armstrong';
  }
}

// N - 16
anagrams(String a, String b) {
  String ans = '';
  List aa = a.toLowerCase().split('');
  List bb = b.toLowerCase().split('');
  for (var i = 0; i < aa.length; i++) {
    for (var j = 0; j < bb.length; j++) {
      if (aa[i] == ' ' ||
          aa[i] == ',' ||
          aa[i] == '!' ||
          aa[i] == '?' ||
          aa[i] == '.' ||
          aa[i] == ';') {
        aa.remove(aa[i]);
      }
      if (bb[j] == ' ' ||
          bb[j] == ',' ||
          bb[j] == '!' ||
          bb[j] == '?' ||
          bb[j] == '.' ||
          bb[j] == ';') {
        bb.remove(bb[j]);
      }
      if (aa.length == bb.length && bb.contains(aa[i]) == aa.contains(bb[i])) {
        ans = 'Anagrams';
      } else {
        ans = 'not Anagrams';
      }
    }
  }
  return ans;
}

// N - 17
missingNumber(List<int> a) {
  int c = 1;
  for (var i = 0; i < a.length; i++) {
    if (c == a[i]) {
      c++;
    }
  }
  return c;
}
