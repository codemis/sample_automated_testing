#import "CharacterTests.h"
#import "Character.h"
#import "Item.h"

@implementation CharacterTests {
    NSDictionary *_characterDetailJson;
    Character *_testGuy;
}

-(void)setUp {
    NSURL *dataServiceURL =
      [[NSBundle bundleForClass:self.class] URLForResource:@"character"
         withExtension:@"json"];
    NSData *sampleData = [NSData dataWithContentsOfURL:dataServiceURL];
    NSError *error;
    id json = [NSJSONSerialization JSONObjectWithData:sampleData
                                              options:kNilOptions
                                                error:&error];
    STAssertNotNil(json,@"Invalid test data");
    _characterDetailJson = json;
    _testGuy =
      [[Character alloc] initWithCharacterDetailData:_characterDetailJson];
}
-(void)tearDown {
    _characterDetailJson = nil;
}
-(void)testCreateCharacterFromDetailJson {
    Character *testGuy1 =
      [[Character alloc] initWithCharacterDetailData:_characterDetailJson];
    STAssertNotNil(testGuy1,@"Could not create character from detail json");
    Character *testGuy2 =
      [[Character alloc] initWithCharacterDetailData:nil];
    STAssertNotNil(testGuy2,@"Could not create character from nil data");
}
-(void)testCreateCharacterFromDetailJsonProps {
    STAssertEqualObjects(_testGuy.thumbnail,
                         @"borean-tundra/171/40508075-avatar.jpg",
                         @"thumbnail URL is wrong");
    STAssertEqualObjects(_testGuy.name,@"Hagrel",@"name is wrong");
    STAssertEqualObjects(_testGuy.battleGroup,@"Emberstorm",
                         @"battlegroup is wrong");
    STAssertEqualObjects(_testGuy.realm,@"Borean Tundra",@"realm is wrong");
    STAssertEqualObjects(_testGuy.achievementPoints,@3130,
                         @"achievement points is wrong");
    STAssertEqualObjects(_testGuy.level,@85,@"level is wrong");
    STAssertEqualObjects(_testGuy.classType,@"Warrior",@"class type is wrong");
    STAssertEqualObjects(_testGuy.race,@"Human",@"race is wrong");
    STAssertFalse([_testGuy.gender isEqualToString:@"Female"],
                  @"gender should not be 'Female");
    STAssertEqualObjects(_testGuy.averageItemLevel,@379,
                         @"avg item level is wrong");
    STAssertEqualObjects(_testGuy.averageItemLevelEquipped,@355,
                         @"avg item level equipped is wrong");
}
-(void)testCreateCharacterFromDetailJsonValidateItems {
    STAssertEqualObjects(_testGuy.neckItem.name,@"Stoneheart Choker",
                         @"neck item name is wrong");
    STAssertEqualObjects(_testGuy.wristItem.name,@"Vicious Pyrium Bracers",
                         @"wrist item name is wrong");
    STAssertEqualObjects(_testGuy.waistItem.name,
                         @"Girdle of the Queen's Champion",
                         @"waist item name is wrong");
    STAssertEqualObjects(_testGuy.handsItem.name,@"Time Strand Gauntlets",
                         @"hands item name is wrong");
    STAssertEqualObjects(_testGuy.shoulderItem.name,@"Temporal Pauldrons",
                         @"shoulder item name is wrong");
    STAssertEqualObjects(_testGuy.chestItem.name,
                         @"Ruthless Gladiator's Plate Chestpiece",
                         @"chest item name is wrong");
    STAssertEqualObjects(_testGuy.fingerItem1.name,@"Thrall's Gratitude",
                         @"finger item 1 name is wrong");
    STAssertEqualObjects(_testGuy.fingerItem2.name,@"Breathstealer Band",
                         @"finger item 2 name is wrong");
    STAssertFalse([_testGuy.shirtItem.name isEqualToString:@"bad name"],
                  @"shirt item name is not 'bad name'");
    STAssertEqualObjects(_testGuy.tabardItem.name,
                         @"Tabard of the Wildhammer Clan",
                         @"tabard item name is wrong");
    STAssertEqualObjects(_testGuy.headItem.name,@"Vicious Pyrium Helm",
                         @"head item name is wrong");
    STAssertEqualObjects(_testGuy.backItem.name,
                         @"Cloak of the Royal Protector",
                         @"back item name is wrong");
    STAssertEqualObjects(_testGuy.legsItem.name,@"Bloodhoof Legguards",
                         @"legs item name is wrong");
    STAssertEqualObjects(_testGuy.feetItem.name,@"Treads of the Past",
                         @"feet item name is wrong");
    STAssertEqualObjects(_testGuy.mainHandItem.name,
                         @"Axe of the Tauren Chieftains",
                         @"main hand item name is wrong");
    STAssertNil(_testGuy.offHandItem.name,@"off hand item name should be nil");
    STAssertEqualObjects(_testGuy.trinketItem1.name,@"Rosary of Light",
                         @"trinket item 1 name is wrong");
    STAssertEqualObjects(_testGuy.trinketItem2.name,@"Bone-Link Fetish",
                         @"trinket item 2 name is wrong");
    STAssertEqualObjects(_testGuy.rangedItem.name,@"Ironfeather Longbow",
                         @"ranged item name is wrong");
}
@end
