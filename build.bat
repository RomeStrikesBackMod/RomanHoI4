copy Converter_Files/* "D:\My Projects\paradoxGameConverters - Vic2ToHoI4\Vic2ToHoI4\Release\"
copy Saves\The_Roman_Empire1936_01_01.v2 "D:\My Projects\paradoxGameConverters - Vic2ToHoI4\Vic2ToHoI4\Release\"
cd "D:\My Projects\paradoxGameConverters - Vic2ToHoI4\Vic2ToHoI4\Release\"
V2ToHoI4Converter.exe The_Roman_Empire1936_01_01.v2
xcopy "output\The_Roman_Empire1936_01_01" "D:\My Projects\RomanHoI4/results"