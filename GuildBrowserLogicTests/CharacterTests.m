#import "CharacterTests.h"
#import "Character.h"
#import "Item.h"

@implementation CharacterTests {
    NSDictionary *_characterDetailJson;
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
}
-(void)tearDown {
    _characterDetailJson = nil;
}
@end
