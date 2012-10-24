#import "WowUtilsTests.h"
#import "WowUtils.h"

@implementation WowUtilsTests

-(void)testCharacterClassTypeLookup {
    STAssertEqualObjects(@"Warrior",[WoWUtils classFromCharacterType:Warrior],
                         @"CharacterClassType should be 'Warrior'");
    STAssertFalse([@"Mage" isEqualToString:
                   [WoWUtils classFromCharacterType:Paladin]],
                  @"CharacterClassType should not be 'Mage'");
    STAssertEqualObjects(@"Paladin",[WoWUtils classFromCharacterType:Paladin],
                         @"CharacterClassType should be 'Paladin'");
    STAssertEqualObjects(@"Hunter",[WoWUtils classFromCharacterType:Hunter],
                         @"CharacterClassType should be 'Hunter'");
    STAssertEqualObjects(@"Rogue",[WoWUtils classFromCharacterType:Rogue],
                         @"CharacterClassType should be 'Rogue'");
    STAssertEqualObjects(@"Priest",[WoWUtils classFromCharacterType:Priest],
                         @"CharacterClassType should be 'Priest'");
    STAssertEqualObjects(@"Death Knight",
                         [WoWUtils classFromCharacterType:DeathKnight],
                         @"CharacterClassType should be 'Death Knight'");
    STAssertEqualObjects(@"Shaman",[WoWUtils classFromCharacterType:Shaman],
                         @"CharacterClassType should be 'Shaman'");
    STAssertEqualObjects(@"Mage",[WoWUtils classFromCharacterType:Mage],
                         @"CharacterClassType should be 'Mage'");
    STAssertEqualObjects(@"Warlock",[WoWUtils classFromCharacterType:Warlock],
                         @"CharacterClassType should be 'Warlock'");
    STAssertEqualObjects(@"Monk",[WoWUtils classFromCharacterType:Monk],
                         @"CharacterClassType should be 'Monk'");
    STAssertEqualObjects(@"Druid",[WoWUtils classFromCharacterType:Druid],
                         @"CharacterClassType should be 'Druid'");
}
-(void)testCharacterRaceTypeLookup {
    STAssertEqualObjects(@"Human",[WoWUtils raceFromRaceType:Human],
                         @"CharacterRaceType should be 'Human'");
    STAssertEqualObjects(@"Orc",[WoWUtils raceFromRaceType:Orc],
                         @"CharacterRaceType should be 'Orc'");
    STAssertFalse([@"Night Elf" isEqualToString:
                   [WoWUtils raceFromRaceType:Dwarf]],
                  @"CharacterRaceType should not be 'NightElf'");
    STAssertEqualObjects(@"Dwarf",[WoWUtils raceFromRaceType:Dwarf],
                         @"CharacterRaceType should be 'Dwarf'");
    STAssertEqualObjects(@"Night Elf",[WoWUtils raceFromRaceType:NightElf],
                         @"CharacterRaceType should be 'Night Elf'");
    STAssertEqualObjects(@"Undead",[WoWUtils raceFromRaceType:Undead],
                         @"CharacterRaceType should be 'Undead'");
    STAssertEqualObjects(@"Tauren",[WoWUtils raceFromRaceType:Tauren],
                         @"CharacterRaceType should be 'Tauren'");
    STAssertEqualObjects(@"Gnome",[WoWUtils raceFromRaceType:Gnome],
                         @"CharacterRaceType should be 'Gnome'");
    STAssertEqualObjects(@"Troll",[WoWUtils raceFromRaceType:Troll],
                         @"CharacterRaceType should be 'Troll'");
    STAssertEqualObjects(@"Goblin",[WoWUtils raceFromRaceType:Goblin],
                         @"CharacterRaceType should be 'Goblin'");
    STAssertEqualObjects(@"Blood Elf",[WoWUtils raceFromRaceType:BloodElf],
                         @"CharacterRaceType should be 'Blood Elf'");
    STAssertEqualObjects(@"Draenei",[WoWUtils raceFromRaceType:Draenei],
                         @"CharacterRaceType should be 'Draenei'");
    STAssertEqualObjects(@"Worgen",[WoWUtils raceFromRaceType:Worgen],
                         @"CharacterRaceType should be 'Worgen'");
}
-(void)testItemQualityLookup {
    STAssertEqualObjects(@"Grey",[WoWUtils qualityFromQualityType:Grey],
                         @"ItemQuality should be 'Grey'");
    STAssertEqualObjects(@"White",[WoWUtils qualityFromQualityType:White],
                         @"ItemQuality should be 'white'");
    STAssertEqualObjects(@"Green",[WoWUtils qualityFromQualityType:Green],
                         @"ItemQuality should be 'Green'");
    STAssertEqualObjects(@"Blue",[WoWUtils qualityFromQualityType:Blue],
                         @"ItemQuality should be 'Blue'");
    STAssertEqualObjects(@"Purple",[WoWUtils qualityFromQualityType:Purple],
                         @"ItemQuality should be 'Purple'");
    STAssertFalse([@"Purple" isEqualToString:
                   [WoWUtils qualityFromQualityType:Legend]],
                  @"ItemQuality should be 'Legend'");
}
@end
