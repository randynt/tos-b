#/bin/bash
beli=`curl -s http://www.bankmandiri.co.id/ | grep USD -A2 | cut -d ">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f2`
jual=`curl -s http://www.bankmandiri.co.id/ | grep USD -A2 | cut -d ">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f3`

beli2=`curl -s http://www.bankmandiri.co.id/ | grep SGD -A2 | cut -d">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f2`
jual2=`curl -s http://www.bankmandiri.co.id/ | grep SGD -A2 | cut -d">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f3`

echo "tanggal/jam | harga jual | harga beli \n
 `date`            | $jual | $beli " >> mandiriUSD.txt

echo "tanggal/jam | harga jual | harga beli 
`date`      | $jual2  | $beli2 " >> mandiriSGD.txt
