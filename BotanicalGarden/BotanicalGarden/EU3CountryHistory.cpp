#include "EU3CountryHistory.h"
#include "CommonRegexes.h"
#include "EU3HistoryItem.h"
#include "ParserHelpers.h"



EU3::CountryHistory::CountryHistory(std::istream& theStream)
{
	registerRegex(R"(.+\..+\..+)", [this](const std::string& _, std::istream& theStream) {
		const auto possibleLastDynasty = HistoryItem(theStream).getLastDynasty();
		if (possibleLastDynasty)
		{
			lastDynasty = *possibleLastDynasty;
		}
	});
	registerRegex(commonItems::catchallRegex, commonItems::ignoreItem);

	parseStream(theStream);
}