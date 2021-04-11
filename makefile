clean:
	rm -rf headlines

headlines:
	@mkdir -p headlines
	parallel -j1 -v --delay 8 --csv \
		./call_api.sh {1} {2} '|' \
		./get_headlines.sh '>' headlines/{1}_{2}.json \
		< months_to_get.csv

all_headlines.json: headlines
	jq -s 'map(.[])' headlines/*.json > $@
