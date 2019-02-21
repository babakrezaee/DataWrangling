######
import os
print(os.getcwd())
directory='~'
os.chdir(directory)
print(os.getcwd())

####
from tqdm import tqdm
from os import listdir
from os.path import isfile, join

def fun_TxtCombine(country):
    if isinstance(country, str):
            mypath=directory+"\\"+country
            files = [f for f in listdir(mypath) if isfile(join(mypath, f))]

            result=[]
            for year in range(1978, 2014, 1):
                result_year=[i for i in files if i.startswith(country+'_'+str(year))]
                result.append(result_year)

            len(result)

            result[29]


            result[35][0]

            import time
            j=1978
            for i in tqdm(range(0,len(result),1)):
                with open(directory+"\\"+country+"\\"+str(j)+'.txt', 'w', encoding='utf-8') as outfile:
                    for k in range(0,len(result[i]),1):
                        fname=result[i][k]
                        with open(directory+"\\"+country+"\\"+fname, encoding='utf-8') as infile:
                            for line in infile:
                                outfile.write(line)
                        #time.sleep(.5)
                #print(j)
                j=j+1
            print("It is done! Check:"+str(mypath))
    else:
        print("Please enter the name of your country as a string!")

##Examples
fun_TxtCombine("IRAN")
fun_TxtCombine("MOROCCO")
