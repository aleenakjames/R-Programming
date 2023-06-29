fact = 1
num = as.integer(readline(prompt = "Enter number: "))
for (i in 1:num) {
  fact = fact * i  
}
print(paste("Factorial of ",num," = ",fact))
num2 = as.integer(readline(prompt = "Enter num to check palindrome: "))
rev = 0
temp = num2
while(temp>0){
  r = temp %% 10
  rev = rev * 10 + r
  temp = temp %/% 10
}
if (rev == num2)5{
  print(paste(num2, " is a palindrome"))
}else{
  print(paste(num2, " is not a palindrome"))
}