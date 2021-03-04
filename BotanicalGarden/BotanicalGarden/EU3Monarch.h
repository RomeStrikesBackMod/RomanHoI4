#ifndef EU3_MONARCH_H
#define EU3_MONARCH_H



#include "Parser.h"



namespace EU3
{

class Monarch: commonItems::parser
{
  public:
	Monarch(std::istream& theStream);

	[[nodiscard]] const auto& getDynasty() const { return dynasty; }

  private:
	std::optional<std::string> dynasty;
};

} // namespace EU3



#endif // EU3_MONARCH_H