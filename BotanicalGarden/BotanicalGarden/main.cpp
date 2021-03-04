#include "EU3World.h"
#include "Log.h"
#include <fstream>
#include <set>



bool isMonarchy(std::string_view government)
{
	return government == "feudal_monarchy" || government == "administrative_monarchy" ||
			 government == "absolute_monarchy" || government == "imperial_government" ||
			 government == "despotic_monarchy" || government == "celestial_empire" ||
			 government == "constitutional_monarchy" || government == "enlightened_despotism";
}


int main()
{
	LOG(LogLevel::Info) << "Acquiring lifeforms";
	EU3::World world;

	LOG(LogLevel::Info) << "Planting in garden";
	std::ofstream botanicalGarden("botanical_expedition.txt");
	for (const auto& [tag, country]: world.getCountries())
	{
		botanicalGarden << tag << " = {\n";
		botanicalGarden << "\tmonarchy = ";
		if (isMonarchy(country.getGovernment()))
		{
			botanicalGarden << "yes\n";
			if (country.getLastDynasty())
			{
				botanicalGarden << "\tlast_dynasty = \"" << *country.getLastDynasty() << "\"\n";
			}
		}
		else
		{
			botanicalGarden << "no\n";
		}
		botanicalGarden << "}\n";
	}
	botanicalGarden.close();

	return 0;
}