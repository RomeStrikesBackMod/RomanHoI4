del results /S /Q
rmdir results /S /Q
mkdir results

xcopy Converter_Files "D:\MyProjects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4" /Y /Q /S
copy Saves\The_Roman_Empire1936_01_01.v2 "D:\MyProjects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4"
cd "D:\MyProjects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4"
V2ToHoI4Converter.exe The_Roman_Empire1936_01_01.v2

xcopy "output\The_Roman_Empire1936_01_01" "D:\MyProjects\RomanHoI4\results\The_Roman_Empire1936_01_01" /E /Y /I /Q
copy "output\The_Roman_Empire1936_01_01.mod" "D:\MyProjects\RomanHoI4\results\"

cd "D:\MyProjects\RomanHoI4"
copy ExtraFiles results /E /Y /I /Q

"c:\Program Files (x86)\Beyond Compare 4\Patch.exe" "results/The_Roman_Empire1936_01_01/history/countries/AOT - Aoteorea.txt" "HoI4Mod/patch/AoteoreaHistory.patch"
"c:\Program Files (x86)\Beyond Compare 4\Patch.exe" "results/The_Roman_Empire1936_01_01/history/countries/RME - The Roman Empire.txt" "HoI4Mod/patch/RomeHistory.patch"