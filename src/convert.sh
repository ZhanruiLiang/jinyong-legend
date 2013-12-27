for i in $(ls *.{c,h});
do
    iconv -f gbk -t utf-8 $i -o $i
done
