#import "WowUtilsTests.h"
#import "WowUtils.h"

@implementation WowUtilsTests

-(void)testCharacterClassTypeLookup {
    STAssertEquals(@"Warrior",[WoWUtils classFromCharacterType:Warrior],
                   @"CharacterClassType should be 'Warrior'");
    STAssertFalse([@"Mage" isEqualToString:
                   [WoWUtils classFromCharacterType:Paladin]],
                  @"CharacterClassType should not be 'Mage'");
    STAssertEquals(@"Paladin",[WoWUtils classFromCharacterType:Paladin],
                   @"CharacterClassType should be 'Paladin'");
    STAssertEquals(@"Hunter",[WoWUtils classFromCharacterType:Hunter],
                   @"CharacterClassType should be 'Hunter'");
    STAssertEquals(@"Rogue",[WoWUtils classFromCharacterType:Rogue],
                   @"CharacterClassType should be 'Rogue'");
    STAssertEquals(@"Priest",[WoWUtils classFromCharacterType:Priest],
                   @"CharacterClassType should be 'Priest'");
    STAssertEquals(@"Death Knight",
                   [WoWUtils classFromCharacterType:DeathKnight],
                   @"CharacterClassType should be 'Death Knight'");
    STAssertEquals(@"Shaman",[WoWUtils classFromCharacterType:Shaman],
                   @"CharacterClassType should be 'Shaman'");
    STAssertEquals(@"Mage",[WoWUtils classFromCharacterType:Mage],
                   @"CharacterClassType should be 'Mage'");
    STAssertEquals(@"Warlock",[WoWUtils classFromCharacterType:Warlock],
                   @"CharacterClassType should be 'Warlock'");
    STAssertEquals(@"Monk",[WoWUtils classFromCharacterType:Monk],
                   @"CharacterClassType should be 'Monk'");
    STAssertEquals(@"Druid",[WoWUtils classFromCharacterType:Druid],
                   @"CharacterClassType should be 'Druid'");
}
-(void)testCharacterRaceTypeLookup {
    STAssertEquals(@"Human",[WoWUtils raceFromRaceType:Human],
                   @"CharacterRaceType should be 'Human'");
    STAssertEquals(@"Orc",[WoWUtils raceFromRaceType:Orc],
                   @"CharacterRaceType should be 'Orc'");
    STAssertFalse([@"Night Elf" isEqualToString:
                   [WoWUtils raceFromRaceType:Dwarf]],
                  @"CharacterRaceType should not be 'NightElf'");
    STAssertEquals(@"Dwarf",[WoWUtils raceFromRaceType:Dwarf],
                   @"CharacterRaceType should be 'Dwarf'");
    STAssertEquals(@"Night Elf",[WoWUtils raceFromRaceType:NightElf],
                   @"CharacterRaceType should be 'Night Elf'");
    STAssertEquals(@"Undead",[WoWUtils raceFromRaceType:Undead],
                   @"CharacterRaceType should be 'Undead'");
    STAssertEquals(@"Tauren",[WoWUtils raceFromRaceType:Tauren],
                   @"CharacterRaceType should be 'Tauren'");
    STAssertEquals(@"Gnome",[WoWUtils raceFromRaceType:Gnome],
                   @"CharacterRaceType should be 'Gnome'");
    STAssertEquals(@"Troll",[WoWUtils raceFromRaceType:Troll],
                   @"CharacterRaceType should be 'Troll'");
    STAssertEquals(@"Goblin",[WoWUtils raceFromRaceType:Goblin],
                   @"CharacterRaceType should be 'Goblin'");
    STAssertEquals(@"Blood Elf",[WoWUtils raceFromRaceType:BloodElf],
                   @"CharacterRaceType should be 'Blood Elf'");
    STAssertEquals(@"Draenei",[WoWUtils raceFromRaceType:Draenei],
                   @"CharacterRaceType should be 'Draenei'");
    STAssertEquals(@"Worgen",[WoWUtils raceFromRaceType:Worgen],
                   @"CharacterRaceType should be 'Worgen'");
}
-(void)testItemQualityLookup {
    STAssertEquals(@"Grey",[WoWUtils qualityFromQualityType:Grey],
                   @"ItemQuality should be 'Grey'");
    STAssertEquals(@"White",[WoWUtils qualityFromQualityType:White],
                   @"ItemQuality should be 'white'");
    STAssertEquals(@"Green",[WoWUtils qualityFromQualityType:Green],
                   @"ItemQuality should be 'Green'");
    STAssertEquals(@"Blue",[WoWUtils qualityFromQualityType:Blue],
                   @"ItemQuality should be 'Blue'");
    STAssertEquals(@"Purple",[WoWUtils qualityFromQualityType:Purple],
                   @"ItemQuality should be 'Purple'");
    STAssertFalse([@"Purple" isEqualToString:
                   [WoWUtils qualityFromQualityType:Legend]],
                  @"ItemQuality should be 'Legend'");
}
@end
