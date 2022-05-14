// Put your code here
int score(String value) {
  int score = 0;
  for (int i = 0; i < value.length; i++) {
    score += scoreLetter(value[i]);
  }
  return score;
}

int scoreLetter(String value) {
  switch (value) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
    case 'l':
    case 'n':
    case 'r':
    case 's':
    case 't':
      return 1;
    case 'd':
    case 'g':
      return 2;
    case 'b':
    case 'c':
    case 'm':
    case 'p':
      return 3;
    case 'f':
    case 'h':
    case 'v':
    case 'w':
    case 'y':
      return 4;
    case 'k':
      return 5;
    case 'j':
    case 'x':
      return 8;
    case 'q':
    case 'z':
      return 10;
    default:
      return 0;
  }
}
