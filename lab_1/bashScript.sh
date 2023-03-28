echo "display all files in this cat"
dir 

echo "display all files in ~"
dir ~

echo "count amount of files in ~"
find ~ -type d,f | wc -l

echo "display names of files in tmp_cat"
find ~/tmp_cat -type f -printf "%f\n"

echo "display names of catalogs in tmp_cat"
find ~/tmp_cat -type d -printf "%f\n"
