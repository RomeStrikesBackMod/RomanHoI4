#ifndef EU3_COUNTRY_H
#define EU3_COUNTRY_H



#include "Parser.h"
#include <string>



namespace EU3
{

class Country: commonItems::parser
{
  public:
	Country(std::istream& theStream);

	[[nodiscard]] const auto& getGovernment() const { return government; }
	[[nodiscard]] const auto& getLastDynasty() const { return lastDynasty; }

  private:
	std::string government;
	std::optional<std::string> lastDynasty;
};

} // namespace EU3



#endif // EU3_COUNTRY_H