#include "EU3HistoryItem.h"
#include "CommonRegexes.h"
#include "EU3Monarch.h"
#include "ParserHelpers.h"



EU3::HistoryItem::HistoryItem(std::istream& theStream)
{
	registerKeyword("monarch", [this](std::istream& theStream) {
		lastDynasty = Monarch(theStream).getDynasty();
	});
	registerRegex(commonItems::catchallRegex, commonItems::ignoreItem);

	parseStream(theStream);
}
