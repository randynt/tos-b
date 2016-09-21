#!/bin/bash
tanggal=`date +%Y-%m-%d`
emas=`curl -s "http://www.logammulia.com/price_list.php?idbutik=8&idkat=2&tanggal=$tanggal&iddesc=0001" | grep "</td>"|cut -d"<" -f1 | cut -d"<" -f9 | xargs | cut -d" " -f9`
tanggal1=`date +%Y-%m-%d`
emas1=`curl -s "http://www.logammulia.com/price_list.php?idbutik=8&idkat=2&tanggal=$tanggal&iddesc=0001" | grep "</td>"|cut -d"<" -f1 | cut -d"<" -f9 | xargs | cut -d" " -f10`
	printf "        date          |             Harga emas 50 gr      | Harga emas 100 gr  \n| `date`    | $emas | $emas1  \n  " >> emas.txt
