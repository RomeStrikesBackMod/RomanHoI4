#ifndef EU3_COUNTRY_HISTORY_H
#define EU3_COUNTRY_HISTORY_H



#include "Parser.h"
#include <string>



namespace EU3
{

class CountryHistory: commonItems::parser
{
  public:
	CountryHistory(std::istream& theStream);

	[[nodiscard]] const auto& getLastDynasty() const { return lastDynasty; }

  private:
	std::optional<std::string> lastDynasty;
};

} // namespace EU3



#endif // EU3_COUNTRY_HISTORY_H