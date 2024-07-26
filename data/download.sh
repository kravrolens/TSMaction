file=$1

while read line
do
  wget "$line"
done <$file