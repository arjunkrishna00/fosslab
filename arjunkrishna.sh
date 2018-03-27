pdftotext -layout results1.pdf S1.txt
pdftotext -layout results2.pdf S2.txt

tr -d '\040\011\012\015\014' <S1.txt> S1tmp.txt
tr -d '\040\011\012\015\014' <S2.txt> S2tmp.txt

sed  -i 's/MDL16CS/\nMDL16CS/g' S1tmp.txt
sed  -i 's/MDL16CS/\nMDL16CS/g' S2tmp.txt

grep -v "APJABDULKALAMTECHNOLOGICALUNIVERSITY" S1tmp.txt > S1tmp1.txt
grep -v "APJABDULKALAMTECHNOLOGICALUNIVERSITY" S2tmp.txt > S2tmp1.txt

sed -i 's/ELECTRONICSANDBIOMEDICAL/\nELECTRONICSANDBIOMEDICAL/g' S1tmp1.txt
sed -i 's/ELECTRONICSANDBIOMEDICAL/\nELECTRONICSANDBIOMEDICAL/g' S2tmp1.txt

grep -v "ELECTRONICS" S1tmp1.txt > S1tmp2.txt
grep -v "ELECTRONICS" S2tmp1.txt > S2tmp2.txt

mv S1tmp2.txt S1.txt
mv S2tmp2.txt S2.txt

rm S1tmp1.txt
rm S2tmp1.txt
rm S1tmp.txt
rm S2tmp.txt

sed -i 's/MA101(/ /g' S1.txt
sed -i 's/),PH100(/ /g' S1.txt
sed -i 's/),BE110(/ /g' S1.txt
sed -i 's/),BE10105(/ /g' S1.txt
sed -i 's/),BE103(/ /g' S1.txt
sed -i 's/),EE100(/ /g' S1.txt
sed -i 's/),PH110(/ /g' S1.txt
sed -i 's/),EE110(/ /g' S1.txt
sed -i 's/),CS110(/ /g' S1.txt
sed -i 's/)/ /g' S1.txt
sed -i 's/CY100(/ /g' S2.txt
sed -i 's/),BE100(/ /g' S2.txt
sed -i 's/),EC100(/ /g' S2.txt
sed -i 's/),CY110(/ /g' S2.txt
sed -i 's/),EC110(/ /g' S2.txt
sed -i 's/),MA102(/ /g' S2.txt
sed -i 's/),BE102(/ /g' S2.txt
sed -i 's/),CS120(/ /g' S2.txt
sed -i 's/),CS100(/ /g' S2.txt
sed -i 's/)/ /g' S2.txt

sed -i 's/O/10/g' S1.txt
sed -i 's/A+/9/g' S1.txt
sed -i 's/A/8.5/g' S1.txt
sed -i 's/B+/8/g' S1.txt
sed -i 's/B/7/g' S1.txt
sed -i 's/ C / 6 /g' S1.txt
sed -i 's/P/5/g' S1.txt
sed -i 's/F/0/g' S1.txt
sed -i 's/FE/0/g' S1.txt
sed -i 's/I/0/g' S1.txt

sed -i 's/O/10/g' S2.txt
sed -i 's/A+/9/g' S2.txt
sed -i 's/A/8.5/g' S2.txt
sed -i 's/B+/8/g' S2.txt
sed -i 's/B/7/g' S2.txt
sed -i 's/ C / 6 /g' S2.txt
sed -i 's/P/5/g' S2.txt
sed -i 's/F/0/g' S2.txt
sed -i 's/FE/0/g' S2.txt
sed -i 's/I/0/g' S2.txt

awk '{printf($1" "($2 * 4 + $3 * 4 + $4 * 3 + $5 * 1 + $6 * 1 + $7 * 4 + $8 * 3 + $9 * 3  + $10 * 1)/24)}' S1.txt > SGPAS1.txt
awk '{printf($1" "($2 * 4 + $3 * 4 + $4 * 3 + $5 * 1 + $6 * 1 + $7 * 4 + $8 * 3 + $9 * 3  + $10 * 1)/24)}' S2.txt > SGPAS2.txt

sed -i 's/MDL16/\nMDL16/g' SGPAS1.txt
sed -i 's/MDL16/\nMDL16/g' SGPAS2.txt

join SGPAS1.txt SGPAS2.txt > join.txt

awk '{printf($1" :" (($2*23) + ($3*24))/47)}' join.txt > cgpa.txt

sed -i 's/MDL16/\nMDL16/g' cgpa.txt

cut -f4,5 C4B.txt>CS4B.txt

grep 'MDL16CS' cgpa.txt>CGPA.txt
rm cgpa.txt

join CS4B.txt CGPA.txt > final.txt
