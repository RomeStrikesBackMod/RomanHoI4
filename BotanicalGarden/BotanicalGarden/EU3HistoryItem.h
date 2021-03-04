#ifndef EU3_HISTORY_ITEM_H
#define EU3_HISTORY_ITEM_H



#include "Parser.h"
#include <optional>
#include <string>


namespace EU3
{

class HistoryItem: commonItems::parser
{
  public:
	HistoryItem(std::istream& theStream);

	[[nodiscard]] const auto& getLastDynasty() const { return lastDynasty; }

  private:
	std::optional<std::string> lastDynasty;
};

} // namespace EU3



#endif // EU3_HISTORY_ITEM_H