#ifndef EU3_WORLD_H
#define EU3_WORLD_H



#include "EU3Country.h"
#include "Parser.h"
#include <map>
#include <string>



namespace EU3
{

class World: commonItems::parser
{
  public:
	World();

	[[nodiscard]] const auto& getCountries() const { return countries; }

  private:
	std::map<std::string, Country> countries;
};

} // namespace EU3



#endif // EU3_WORLD_H