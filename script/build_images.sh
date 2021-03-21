rm -rf tmp/
mkdir -p tmp/pdf
mkdir -p tmp/actual
mkdir -p tmp/expected
mkdir -p tmp/result_diff_images
ls -1 fixtures/actual/*.tex | xargs -L 1 platex-dev -output-directory=tmp/pdf
cd tmp/pdf
ls -1 *.dvi | xargs -L 1 dvipdfmx 
cd ../..
cp tmp/pdf/*.pdf tmp/actual/
mogrify -background white -alpha background -alpha off -density 300  -quality 90 -format png tmp/actual/*.pdf
rm -f tmp/actual/*.pdf
cp fixtures/expected/*.pdf tmp/expected/
mogrify -background white -alpha background -alpha off -density 300  -quality 90 -format png tmp/expected/*.pdf
rm -f tmp/expected/*.pdf
reg-cli tmp/actual tmp/expected tmp/result_diff_images -R ./tmp/report.html
