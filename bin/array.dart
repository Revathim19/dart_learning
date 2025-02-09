void main(){
  List<int> numbers= [10,20,15,9,5,7,23,26];

  for(int number in numbers){
    int out=1;
    if(number>10 && number %2 !=0) {
      out=out*2;
      out++;
      print('Value of out '+ out.toString());
    }
  }

  {
      List<int> numbers = [3, 5, 7, 2, 8, 1, 9];

      int largest = numbers[0];  // Assume the first number is the largest

      // Loop through the list to find the largest number
      for (int number in numbers) {
        if (number > largest) {
          largest = number;  // Update the largest number
        }
      }

      print('The largest number is $largest');
    }

{

    int evenCount = 0;

    // Loop through numbers from 1 to 20
    for (int i = 1; i <= 20; i++) {
      // If the number is even, increment the count
      if (i % 2 == 0) {
        evenCount++;
        print('even numbers between 1 and 20: $i');

      }
      else {
        print('odd numbers between 1 and 20: $i');
      }
    }

    print('Total even numbers between 1 and 20: $evenCount');
  }
}


