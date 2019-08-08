INPUT=Docgraph_30_Vertex.csv
OLDIFS=$IFS
IFS=,
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read id 
do
	echo "$id"
	curl -X GET "localhost:9000/query/graph500/Insert_Vertex?id="$id""
done < $INPUT
IFS=$OLDIFS
