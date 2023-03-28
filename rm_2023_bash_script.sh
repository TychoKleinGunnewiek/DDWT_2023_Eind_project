#!/bin/bash

#All tweets of 25th March 2017 Netherlands-Bulgaria football match. Without retweets, first searched based on match hashtags then searched based on a list of 10 negative words.
zless /net/corpora/twitter2/Tweets/2017/03/20170325* | /net/corpora/twitter2/tools/tweet2tab text | grep -Ev 'RT ' | grep -E -i '#bulned |#nedbul |ned-bul |nederland-bulgarije ' | grep -E -i 'verloren |verlies |gefaald |teleurstelling |drama |slecht |dramatsich |missen |balen |crisis ' > ned_bul_neg_2017.txt

#Using extensive grep to search for 2 or more occurences of exclamation marks on the first 75 occurences and put this data in a seperate frequency file
echo 'Ned_Bul_negative less than 2 "!":' > rm_2023_freqs.txt
head -75 ned_bul_neg_2017.txt | grep -Ev '.*!.*!+.*' | wc -l >> rm_2023_freqs.txt
echo 'Ned_Bul_negative 2 or more "!":' >> rm_2023_freqs.txt
head -75 ned_bul_neg_2017.txt | grep -E '.*!.*!+.*' | wc -l >> rm_2023_freqs.txt

#All tweets of 9th of June 2017 Netherlands-Luxembourgh football match. Without retweets, first searched based on match hashtags then searched based on a list of 10 positive words.
zless /net/corpora/twitter2/Tweets/2017/06/20170609* | /net/corpora/twitter2/tools/tweet2tab text | grep -Ev 'RT ' | grep -E -i '#luxned |#nedlux |ned-lux |nederland-luxemburg ' | grep -E -i 'gewonnen |overwinning |trots | genieten |kampioen |winnen |winnaar |kans |top |mooi ' > ned_lux_pos_2017.txt

#Using extensive grep to search for 2 or more occurences of exclamation marks on the first 75 occurences and put this data in a seperate frequency file
echo 'Ned_Lux_positive less than 2 "!":' >> rm_2023_freqs.txt
head -75 ned_lux_pos_2017.txt | grep -Ev '.*!.*!+.*' | wc -l >> rm_2023_freqs.txt
echo 'Ned_Lux_positive 2 or more "!":' >> rm_2023_freqs.txt
head -75 ned_lux_pos_2017.txt | grep -E '.*!.*!+.*' | wc -l >> rm_2023_freqs.txt


#All tweets of 7th of september 2021 Netherlands-turkey football match. Without retweets, first searched based on match hashtags then searched based on a list of 10 negative words.
zless /net/corpora/twitter2/Tweets/2021/09/20210907* | /net/corpora/twitter2/tools/tweet2tab text | grep -Ev 'RT ' | grep -E -i '#turned |#nedtur |ned-tur |nederland-turkije ' | grep -E -i 'gewonnen |overwinning |trots | genieten |kampioen |winnen |winnaar |kans |top |mooi ' > ned_tur_pos_2021.txt

#Using extensive grep to search for 2 or more occurences of exclamation marks on the first 75 occurences and put this data in a seperate frequency file
echo 'Ned_Tur_positive less than 2 "!":' >> rm_2023_freqs.txt
head -75 ned_tur_pos_2021.txt | grep -Ev '.*!.*!+.*' | wc -l >> rm_2023_freqs.txt
echo 'Ned_Tur_Positive 2 or more "!":' >> rm_2023_freqs.txt
head -75 ned_tur_pos_2021.txt | grep -E '.*!.*!+.*' | wc -l >> rm_2023_freqs.txt


#All tweets of 27th of june 2021 Netherlands-czech football match. Without retweets, first searched based on match hashtags then searched based on a list of 10 positive words.
zless /net/corpora/twitter2/Tweets/2021/06/20210627* | /net/corpora/twitter2/tools/tweet2tab text | grep -Ev 'RT ' | grep -E -i '#tjsned |#nedtsj |#nedcze |ned-tsj |nederland-tsjechie ' | grep -E -i 'verloren |verlies |gefaald |teleurstelling |drama |slecht |dramatsich |missen |balen |crisis ' > ned_tsj_neg_2021.txt

#Using extensive grep to search for 2 or more occurences of exclamation marks on the first 75 occurences and put this data in a seperate frequency file
echo 'Ned_Tsj_negative less than 2 "!":' >> rm_2023_freqs.txt
head -75 ned_tsj_neg_2021.txt | grep -Ev '.*!.*!+.*' | wc -l >> rm_2023_freqs.txt
echo 'Ned_Tsj_negative 2 or more "!":' >> rm_2023_freqs.txt
head -75 ned_tsj_neg_2021.txt | grep -E '.*!.*!+.*' | wc -l >> rm_2023_freqs.txt

