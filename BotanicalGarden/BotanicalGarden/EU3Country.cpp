#include "EU3Country.h"
#include "ParserHelpers.h"
#include <CommonRegexes.h>



EU3::Country::Country(std::istream& theStream)
{
	registerKeyword("government", [this](std::istream& theStream) {
		government = commonItems::singleString(theStream).getString();
	});
	registerRegex(commonItems::catchallRegex, commonItems::ignoreItem);

	parseStream(theStream);
}