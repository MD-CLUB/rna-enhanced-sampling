# extract only useful bibtex records
# usage
# reduce.bib.sh table.tex bibliography.bib

for bib in $(grep -o "cite{[^}]*}" $1  | sed "s/cite{//" | sed "s/}//")
do
bibtool -X $bib $2
done | bibtool -r <(echo "delete.field = { note }")
