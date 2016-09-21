HargaEmas50=`curl -s "http://logammulia.com/price_list.php?idbutik=8&idkat=2&tanggal=\`date +%Y-%m-%d\`&iddesc=0001" |grep ">50$" -A10|xargs|cut -d">" -f6|cut -d"<" -f1`
HargaEmas100=`curl -s "http://logammulia.com/price_list.php?idbutik=8&idkat=2&tanggal=\`date +%Y-%m-%d\`&iddesc=0001" |grep ">100	" -A10|xargs|cut -d">" -f6|cut -d"<" -f1`

echo "`date` | $HargaEmas50 | $HargaEmas100"
