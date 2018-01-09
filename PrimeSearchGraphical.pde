int currentNum = 1;

//Graphical Properties:
// Prime multiplied by the Multiplicator will be the diameter of the circle
int multiplicator = 6;

//Number of times we search for primes
int iterations = 200;


void setup(){
  
  size(900,900);
  background(0);
}

void draw(){

 display();
}

void display(){

  if(currentNum < iterations){
    
     currentNum++;
    
     if (isPrime(currentNum) == true){
       println(currentNum + " IS PRIME!!!");
       noFill();
       stroke(random(0,255),random(0,255),random(0,255));
       ellipse(width/2,height/2, currentNum * multiplicator, currentNum * multiplicator);
     }
     else{
       println(currentNum + " is not Prime");
     }
  }

}

boolean isPrime(int num){
  
  if(num % 2 == 0 && num != 2 ) return false; //weeds out all even numbers - they're definitely not prime. :)
  else{
    for(int i = 3; i < num; i+=2) //Starts at 3 (First odd number) and jumps in steps of 2 (Because we don't need even divisors, we checked already if we can divide by 2)
    {
      if(num % i == 0) 
      {
        return false;
      }
    }
  }
  return true; 
}