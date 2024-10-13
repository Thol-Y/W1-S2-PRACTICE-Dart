void main()
{
  List <int> score = [45, 78, 62, 49, 85, 33, 90, 50];
  
  var passed = score.where((score) => score >= 50);
  int passedOut = passed.length;

  print('Passed Students: $passed');
  print('$passedOut passed studens');
}
  