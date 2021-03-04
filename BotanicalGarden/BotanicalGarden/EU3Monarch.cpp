#include "EU3Monarch.h"
#include "CommonRegexes.h"
#include "ParserHelpers.h"
#include "StringUtils.h"



EU3::Monarch::Monarch(std::istream& theStream)
{
	registerKeyword("dynasty", [this](std::istream& theStream) {
		dynasty = commonItems::remQuotes(commonItems::singleString(theStream).getString());
	});
	registerRegex(commonItems::catchallRegex, commonItems::ignoreItem);

	parseStream(theStream);
}