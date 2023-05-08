def isBalanced(string):
    
    #First I declared a dictionary with the open and closed brackets as pair key and value.
    brackets={'[':']',
              '{':'}',
              '(':')'}
    
    #Second is declaring an empty list to add the last open brackets to it (to make sure that it's a pair with the next closed bracket.
    open_brackets=[]
    
    #Third is the iterration on string.
    for ch in string:
    
        #The first condition is that if it's an open bracket we append it to open_brackets list.
        if ch in brackets.keys():
            open_brackets.append(ch)

        #The second condition is that if the open_bracket list has no items on it, it means that there is an closed bracket with no previous open brackets.
        elif len(open_brackets)==0:
            return False
        
        #The third condition makes sure that the charcater is a closed bracket and it has a match with the last shown open bracket in the string.
        elif ch in brackets.values() and ch == brackets[open_brackets[-1]]:
            open_brackets.pop()
        
        #The final condition is for any charcater other than brackets and if closed doesn't match the open.
        else:
            return False
        
    #The return here works if the open_brackets list has no value in it, meaning that for every open bracket there is a closed bracket.
    return len(open_brackets)==0
    
#Check if user input is not empty.
while True:
    user_input=str(input("Check if brackets balanced: "))
    if len(user_input)>0:break

print(isBalanced(user_input))      
#It may not work with vs code I don't know why, but I think vs code adds a value to the user input.
         
