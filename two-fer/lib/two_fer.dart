String twoFer([String? name]) {
  // Replace the throw call and put your code here
  if (name == null) {
    return "One for you, one for me.";
  } else {
    return "One for $name, one for me.";
  }
}
