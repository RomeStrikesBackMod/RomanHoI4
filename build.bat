del results /S /Q
rmdir results /S /Q
mkdir results

xcopy Converter_Files "C:\MyProjects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4" /Y /Q /S
cd "C:\MyProjects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4"
Vic2ToHoI4Converter.exe

xcopy "output\Rome_Strikes_Back" "C:\MyProjects\RomanHoI4\results\Rome_Strikes_Back" /E /Y /I /Q
copy "output\Rome_Strikes_Back.mod" "C:\MyProjects\RomanHoI4\results\"

cd "C:\MyProjects\RomanHoI4"
xcopy ExtraFiles results\Rome_Strikes_Back /E /Y /I /Q