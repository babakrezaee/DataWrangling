##These codes summarize the most effective way of cleaning up Persian text, saved in CSV files such as tweet data, for text analysis purposes.
#I will keep this code updated.

##First lets load packages
from wordcloud import STOPWORDS as EN_STOPWORDS

from __future__ import unicode_literals
from PersianStemmer import PersianStemmer
ps = PersianStemmer()


##Common persian stopwords
stop_words = ['دیگران', 'همچنان', 'مدت', 'چیز', 'سایر', 'جا', 'طی', 'کل', 'کنونی', 'بیرون', 'مثلا', 'کامل', 'کاملا', 'آنکه', 'موارد', 'واقعی',
              'امور', 'اکنون', 'بطور', 'بخشی', 'تحت', 'چگونه', 'عدم', 'نوعی', 'حاضر', 'وضع', 'مقابل', 'کنار', 'خویش', 'نگاه', 'درون', 'زمانی',
              'بنابراین', 'تو', 'خیلی', 'بزرگ', 'خودش', 'جز', 'اینجا', 'مختلف', 'توسط', 'نوع', 'همچنین', 'آنجا', 'قبل', 'جناح', 'اینها', 'طور',
              'شاید', 'ایشان', 'جهت', 'طریق', 'مانند', 'پیدا', 'ممکن', 'کسانی', 'جای', 'کسی', 'غیر', 'بی', 'قابل', 'درباره', 'جدید', 'وقتی', 'اخیر',
              'چرا', 'بیش', 'روی', 'طرف', 'جریان', 'زیر', 'آنچه', 'البته', 'فقط', 'چیزی', 'چون', 'برابر', 'هنوز', 'بخش', 'زمینه', 'بین', 'بدون',
              'استفاده', 'همان', 'نشان', 'بسیاری', 'بعد', 'عمل', 'روز', 'اعلام', 'چند', 'آنان', 'بلکه', 'امروز', 'تمام', 'بیشتر', 'آیا', 'برخی', 'علیه',
              'دیگری', 'ویژه', 'گذشته', 'انجام', 'حتی', 'داده', 'راه', 'سوی', 'ولی', 'زمان', 'حال', 'تنها', 'بسیار', 'یعنی', 'عنوان', 'همین', 'هبچ',
              'پیش', 'وی', 'یکی', 'اینکه', 'وجود', 'شما', 'پس', 'چنین', 'میان', 'مورد', 'چه', 'اگر', 'همه', 'نه', 'دیگر', 'آنها', 'باید', 'هر', 'او',
              'ما', 'من', 'تا', 'نیز', 'اما', 'یک', 'خود', 'بر', 'یا', 'هم', 'را', 'این', 'با', 'آن', 'برای', 'و', 'در', 'به', 'که', 'از'
              'کن', 'کرد', 'کردن', 'باش', 'بود', 'بودن', 'شو', 'شد', 'شدن', 'ددار', 'داشت', 'داشتن', 'خواه', 'خواست', 'خواستن', 'گوی', 'گفت',
              'گفتن', 'گرفت', 'گرفتن', 'آمد', 'آمدن', 'توانست', 'توانستن', 'یافت', 'یافتن', 'آورد', 'آوردن','هرگز','نمي کند', 'است','هستند','با','از','چه','باشد',
              'مي کنند']

##For each analysis you might be interested to add more stopwords, you can do it simply as follow
stop_AddList=['Rouhani_ir', 'Rouhaniir', 'Rouhani ir', 'Rouhani', 'Rouhani', 'FALSE', 'https', 'HassanRouhani', 'fa', 'RT', 'of', 'co', 'CO', 'رو',
                'آقای', 'در', 'که', 'به', 'شان', 'های']

for word in stop_AddList:
    stop_words.append(word)

####Defining some functions for cleaning up the tweets
#Removes punctuations
def remove_punctuation(txt):
    s = ""
    punc = string.punctuation+'؟،؛«»'
    for l in txt:
        if l not in punc:
            s+=l
    return s

#Removes charachters
charachter_list=["_","@","#",".",",","!",")","(","%",";", ":", "،"]
def RemoveCharachter(word):
    for letter in word:
        if (letter in charachter_list) | (letter.isdigit()):
            word = word.replace(letter," ")
    return word

def RemoveChar(tokens):
    tokens_ref=[]
    for i, word in enumerate(tokens):
        tokens_ref.append(RemoveCharachter(word))
    return tokens_ref

##Persian Stemer

def RemovePersianStem(tokens):
    tokens_ref=[]
    for i, word in enumerate(tokens):
        if (word not in stop_words) :
            tokens_ref.append(ps.run(word))
    return tokens_ref

##Remove stopwords
def RemoveStopWords(tokens):
    tokens_ref=[]
    for i, word in enumerate(tokens):
        if (word not in stop_words) :
            tokens_ref.append(word)
    return tokens_ref

##Removing all of the empty list elements
def RemoveSpace(tokens):
    tokens_ref=[]
    for i, word in enumerate(tokens):
        if (len(word)>3) :
            tokens_ref.append(word)
    return tokens_ref

#Remove asascii terms, such as English words

isascii = lambda s: len(s) == len(s.encode())

def RemoveEnglish(tokens):
    tokens_ref=[]
    for i, word in enumerate(tokens):
        if isascii(word)!=True :
            str_word=str(word)
            tokens_ref.append(str_word)
    return tokens_ref
###########
