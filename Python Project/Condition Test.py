#!/usr/bin/env python
# coding: utf-8

# In[3]:


# 1) Write a Program to take input number from the user, it should print 
#    True if it is less than or equals to 0, otherwise it should print False.

inp_no = int(input("enter no from user "))

if (inp_no<=0):
	print(True)
else:
	print(False)


# In[1]:


a = int(input("enter no for a "))
b = int(input("enter no for b "))
c = int(input("enter no for c "))

sum = (a + b +c)

if (a==b):
    sum=(b+c)
    print(sum)
elif(b==c):
    sum=(a+c)
    print(sum)
elif(c==a):
    sum=(a+b)
elif(c==a and a==b and b==c):
    print(0)
else:
    print(sum)


# In[6]:


# 2) Write a Program to take input number from user, it should print True if the 
#    number is divisible by 100 otherwise it should print False.

inp_no = int(input("enter no from user "))

if (inp_no%100==0):
    print(True)
else:
    print(False)


# In[9]:


# 3) A bartender is writing a simple program to determine whether he should serve drinks to
#    someone. He only serves drinks to people 18 and older and when he's not on break.

inp_age = int(input("enter people age "))
bartender = input("on break 'Y' or not 'N' ")

if (inp_age>=18) and (bartender=='N'):
	print("serve drink")
else:
	print("dont serve")


# In[13]:


# 4) Write a Program to check whether a person can watch MA15+ rated movie. On the basis of
#    the following condition.
#    1) The person is at least 15 years old.
#    2) They have parental supervision.
#    You need to take 2 input from the user, asking for age and whether parent is accompaning or no
#    Your output should show “Can watch movie” or “Cannot watch the movie”


person_age = int(input("enter person age for watching "))
inp_supervision = input("have parental supervision 'Y' or not 'N' ")

if (person_age>=15 and inp_supervision=='Y'):
	print("can watch movie")
else:
	print("cannot watch the movie")


# In[18]:


# 5) Write a Program that takes 2 input from the user as number and Print the output according to
#    the following condition.:
#    You need to print True if both the numbers are
#    Smaller than 0, OR ...
#    Greater than 0, OR ...
#    Exactly 0
#    Otherwise print False


a = int(input("enter no"))
b = int(input("enter no"))

if (a<0 and b<0):
	print(True)
elif (a>0 and b>0):
	print(True)
elif (a==0 and b==0):
	print(True)
else:
	print(False)


# In[21]:


# Q6) Take a input string from the User and your program should print the string with its first
#     and last characters swapped, except under 2 conditions:
#     1) If the length of the string is less than two, print "Incompatible." .
#     2) If the first and last characters are the same, print "Two's a pair." .


string = input("enter string")

a = list(string)
temp=a[0]
a[0]=a[-1]
a[-1]=temp


if (len(string)<=2):
    print("Incompatible")
elif (string[0]==string[-1]):
    print("Two's a pair")

print("".join(a))


# In[24]:


# Q7) Take 3 integer input values, a b c, and print their sum. However, if one of
#     the values is the same as another of the values, it does not count towards the sum.

a = int(input("enter no for a "))
b = int(input("enter no for b "))
c = int(input("enter no for c "))

sum = (a + b +c)

if (c==a and a==b and b==c):
    print(0)                     #if all values same the output should be 0
elif (a==b):
    sum=(b+c)
    print(sum)
elif (b==c):
    sum=(a+c)
    print(sum)
elif (c==a):
    sum=(a+b)

else:
    print(sum)


# In[31]:


# Q8) You and your date are trying to get a table at a restaurant. The parameter "you" is the stylishness of
#     your clothes, in the range 0..10, and "date" is the stylishness of your date's clothes. The result
#     getting the table is encoded as an int value with 0=no, 1=maybe, 2=yes. If either of you is very
#     stylish, 8 or more, then the result is 2 (yes). With the exception that if either of you has style of 2 or
#     less, then the result is 0 (no). Otherwise the result is 1 (maybe).

your_parameter = int(input("enter your parameter between 0 to 10 "))
your_date_parameter = int(input("enter your parameter between 0 to 10 "))

if (your_parameter>=8 and your_date_parameter<8) or (your_parameter<8 and your_date_parameter>=8):
	print("Yes")
elif (your_parameter<=2 and your_date_parameter<=2):
	print("No")
elif (your_parameter>10 or your_date_parameter>10):
	print("invalid input ")
else:
	print("may Be ")


# In[33]:


# Q9) Given 2 integr input a and b, print their sum. However, if sums(addition) is in the range of 10..19 inclusive, are forbidden, so in that case just print 20.

a = int(input("enter no "))
b = int(input("enter another no "))

sum = (a+b)

if (sum>=10 and sum<=19):
	print(20)
else:
	print(sum)


# In[46]:


# Q10) Write a Program to take integer input from the user as year and check
#      whether the given year is a leap year or not.
#      Hint: A year must either be divisible by 400 or divisible by 4 and not 100.

inp_year = int(input("enter input as year "))

if (inp_year%4==0) and (inp_year%400==0) or (inp_year%100!=0):
	print("leap year")
else:
	print("no leap year ")

