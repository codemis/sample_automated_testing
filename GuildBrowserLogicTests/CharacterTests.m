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
}
@end
