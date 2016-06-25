while true
do
    curl -s wttr.in/New_York > weather.txt
    #someone pls save me and teach me how the fuk you do multiple lines
    awk 'NR!~/^(1|2|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40)$/' weather.txt
    rm -rf weather.txt
    #sleep for 5 minutes
    sleep 5m
done    
