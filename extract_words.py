##class Word:
##    def __init__(self, word):
##        self.word = word
##        self.count = 1;
##    def __str__(self):
##        string = str(self.word)+': '+str(self.count)
##        return(string)
##def checkUnique(x,words):
##    count=0
##    for i in words:
##        if words[i]==x:
##            count+=1
##        if count==2:
##            return False
##    return True    
##def wordFrequency(words, text_file2):
##    newwords=[]   
##    for i in range(len(words)):
##        if len(newwords)==0:  
##            newwords.append(Word(words[i]))
##        else:
##            isIn = False
##            for x in newwords:
##                if x.word == newwords[i]:
##                    x.count += 1
##                    isIn = True
##            if isIn == False:
##                words.append(Word(words[i]))                   
##    frequency=1
##    done=False                            
##    while not done:
##        num_of_words=0
##        for i in range(len(newwords)):
##            if newwords[i].count==frequency:
##                num_of_words+=1
##        text_file2.write(str(frequency)+' : '+str(num_of_words))
##        frequency+=1    
##    return
##def main():
##    words = []
##    file = open("book.txt", "r")
##    text_file = open("allwords.txt", "w")
##    word = ''
##    for line in file:
##        print(line)
##        string = line.lower()
##        for char in string:
##            if( char=="’" or char == "'"):
##                pass
##            elif char.isalpha():
##                word += char
##            else:
##                words.append(word)
##    for x in words:
##        text_file.write(x + '\n')
##    text_file.close()
##    text_file1 = open("uniquewords.txt", "w")
##    for x in words:
##        unique=checkUnique(x,words)
##        if unique:
##            text_file1.write(x+ '\n')
##    text_file1.close()
##    text_file2 = open("wordfrequency.txt", "w")   
##    wordFrequency(words, text_file2)
##    text_file2.close()
##        
##main()

class Word:
    def __init__(self, word):
        self.word = word
        self.count = 1;
    def __str__(self):
        string = str(self.word)
        string += ': '
        string += str(self.count)
        return(string)

  
def wordAction(word,words):
    if len(word) == 0:
        return
    else:
        if len(words) == 0:
            newWord = Word(word)
            words.append(newWord)
        else:              
            isIn = False
            for x in words:
                if x.word == word:
                    x.count += 1
                    isIn = True
            if isIn == False:
                newWord = Word(word)
                words.append(newWord)
            
            return

def wordFrequency(words, text_file2):
    frequency=1
    while frequency<=words[0].count:
            num_of_words=0
            for i in range(len(words)):
                    if words[i].count==frequency:
                            num_of_words+=1
            if num_of_words!=0:
                text_file2.write(str(frequency)+' : '+str(num_of_words)+'\n')
            frequency+=1	
    return
def main():
    words = []
    file = open("book.txt", "r")
    text_file = open("allwords.txt", "w")
    word = ''
    for line in file:
        string = line
        string = string.lower()
        for char in string:
            if( char=="’" or char == "'"):
                pass
            elif char.isalpha():
                word += char
            else:
                wordAction(word, words)
                word = ''
    for passnum in range(len(words)-1,0,-1):
        for i in range(passnum):
            if words[i].count < words[i+1].count:
                temp = words[i]
                words[i] = words[i+1]
                words[i+1] = temp
    for x in words:
        text_file.write(str(x.word) + '\n')
    text_file.close()
    text_file1 = open("uniquewords.txt", "w")
    for x in words:
        if x.count == 1:
            text_file1.write(x.word + '\n')
    text_file1.close()
    text_file2 = open("wordfrequency.txt", "w")
    wordFrequency(words, text_file2)
    text_file2.close()
        
main()




