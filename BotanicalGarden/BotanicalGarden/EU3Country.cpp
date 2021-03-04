#include "EU3Country.h"
#include "ParserHelpers.h"
#include "EU3CountryHistory.h"
#include <CommonRegexes.h>



EU3::Country::Country(std::istream& theStream)
{
	registerKeyword("government", [this](std::istream& theStream) {
		government = commonItems::singleString(theStream).getString();
	});
	registerRegex("history", [this](const std::string& unused,std::istream& theStream) {
		lastDynasty = CountryHistory(theStream).getLastDynasty();
	});
	registerRegex(commonItems::catchallRegex, commonItems::ignoreItem);

	parseStream(theStream);
}