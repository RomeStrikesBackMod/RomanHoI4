del results /S /Q
rmdir results /S /Q
mkdir results

xcopy Converter_Files "D:\My Projects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4" /Y /Q
copy Saves\The_Roman_Empire1936_01_01.v2 "D:\My Projects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4"
cd "D:\My Projects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4"
V2ToHoI4Converter.exe The_Roman_Empire1936_01_01.v2
xcopy "output\The_Roman_Empire1936_01_01" "D:\My Projects\RomanHoI4\results\The_Roman_Empire1936_01_01" /E /Y /I /Q
copy "output\The_Roman_Empire1936_01_01.mod" "D:\My Projects\RomanHoI4\results\"

cd "D:\My Projects\RomanHoI4"
xcopy HoI4Mod results /E /Y /I /Q

"c:\Program Files (x86)\Beyond Compare 4\Patch.exe" "results/The_Roman_Empire1936_01_01/history/countries/ALG - Algeria.txt" "HoI4Mod/patch/AlgeriaHistory.patch"
"c:\Program Files (x86)\Beyond Compare 4\Patch.exe" "results/The_Roman_Empire1936_01_01/history/countries/ANG - Angola.txt" "HoI4Mod/patch/AngolaHistory.patch"
"c:\Program Files (x86)\Beyond Compare 4\Patch.exe" "results/The_Roman_Empire1936_01_01/history/countries/AOT - Aoteorea.txt" "HoI4Mod/patch/AoteoreaHistory.patch"
"c:\Program Files (x86)\Beyond Compare 4\Patch.exe" "results/The_Roman_Empire1936_01_01/history/countries/AQI - Aquitaine.txt" "HoI4Mod/patch/AquitaineHistory.patch"
"c:\Program Files (x86)\Beyond Compare 4\Patch.exe" "results/The_Roman_Empire1936_01_01/history/countries/ARM - Armenia.txt" "HoI4Mod/patch/ArmeniaHistory.patch"
"c:\Program Files (x86)\Beyond Compare 4\Patch.exe" "results/The_Roman_Empire1936_01_01/history/countries/AST - Australia.txt" "HoI4Mod/patch/AustraliaHistory.patch"
"c:\Program Files (x86)\Beyond Compare 4\Patch.exe" "results/The_Roman_Empire1936_01_01/history/countries/AZR - Azerbaijan.txt" "HoI4Mod/patch/AzerbaijanHistory.patch"