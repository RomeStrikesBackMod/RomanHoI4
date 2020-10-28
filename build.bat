del results /S /Q
rmdir results /S /Q
mkdir results

xcopy Converter_Files "C:\MyProjects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4" /Y /Q /S
cd "C:\MyProjects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4"
V2ToHoI4Converter.exe

xcopy "output\The_Roman_Empire1936_01_01" "C:\MyProjects\RomanHoI4\results\The_Roman_Empire1936_01_01" /E /Y /I /Q
copy "output\The_Roman_Empire1936_01_01.mod" "C:\MyProjects\RomanHoI4\results\"

cd "C:\MyProjects\RomanHoI4"
xcopy ExtraFiles results\The_Roman_Empire1936_01_01 /E /Y /I /Q

rem "C:\Program Files\Beyond Compare 4\Patch.exe" "results/The_Roman_Empire1936_01_01/history/countries/AOT - Aoteorea.txt" "HoI4Mod/patch/AoteoreaHistory.patch"
rem "c:\Program Files\Beyond Compare 4\Patch.exe" "results/The_Roman_Empire1936_01_01/history/countries/RME - The Roman Empire.txt" "HoI4Mod/patch/RomeHistory.patch"