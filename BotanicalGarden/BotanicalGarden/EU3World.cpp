#include "EU3World.h"
#include "CommonRegexes.h"
#include "ParserHelpers.h"



EU3::World::World()
{
	registerRegex("[A-Z][A-Z0-9]{2}", [this](const std::string& tag, std::istream& theStream) {
		if (tag == "REB")
		{
			commonItems::ignoreItem(tag, theStream);
			return;
		}

		countries.emplace(tag, Country(theStream));
	});
	registerRegex(commonItems::catchallRegex, commonItems::ignoreItem);

	parseFile("../../Saves/TheEmpireStrikesBack.eu3");
}