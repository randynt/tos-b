#/bin/bash
jual=`curl -s http://www.klikbca.com/ | grep USD -A2 | cut -d ">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f2`
beli=`curl -s http://www.klikbca.com/ | grep USD -A2 | cut -d ">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f3`

jual2=`curl -s http://www.klikbca.com/ | grep SGD -A2 | cut -d">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f2`
beli2=`curl -s http://www.klikbca.com/ | grep SGD -A2 | cut -d">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f3`

echo "tanggal/jam | harga jual | harga beli \n
 `date`            | $jual | $beli " >> bcaUSD.txt

echo "tanggal/jam | harga jual | harga beli 
`date`      | $jual2  | $beli2 " >> bcaSGD.txt
