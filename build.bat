del results /S /Q
rmdir results /S /Q
mkdir results

xcopy Converter_Files "C:\MyProjects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4" /Y /Q /S
cd "C:\MyProjects\paradoxGameConvertersForks\Vic2ToHoI4\Release\Vic2ToHoI4"
V2ToHoI4Converter.exe

xcopy "output\RomeStrikesBack" "C:\MyProjects\RomanHoI4\results\RomeStrikesBack" /E /Y /I /Q
copy "output\RomeStrikesBack.mod" "C:\MyProjects\RomanHoI4\results\"

cd "C:\MyProjects\RomanHoI4"
xcopy ExtraFiles results\RomeStrikesBack /E /Y /I /Q