del results /S /Q
rmdir results /S /Q
mkdir results

del "C:\Program Files (x86)\Steam\steamapps\common\Victoria 2\mod\TheEmpireStrikesBack" /S /Q
rmdir "C:\Program Files (x86)\Steam\steamapps\common\Victoria 2\mod\TheEmpireStrikesBack" /S /Q
xcopy Vic2Mod "C:\Program Files (x86)\Steam\steamapps\common\Victoria 2\mod\" /Y /Q /S

xcopy Converter_Files "C:\MyProjects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4" /Y /Q /S
cd "C:\MyProjects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4"
V2ToHoI4Converter.exe

xcopy "output\Rome_Strikes_Back" "C:\MyProjects\RomanHoI4\results\Rome_Strikes_Back" /E /Y /I /Q
copy "output\Rome_Strikes_Back.mod" "C:\MyProjects\RomanHoI4\results\"

cd "C:\MyProjects\RomanHoI4"
xcopy ExtraFiles results\Rome_Strikes_Back /E /Y /I /Q