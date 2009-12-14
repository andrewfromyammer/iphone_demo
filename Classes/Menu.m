
#import "Menu.h"


@implementation Menu

- (id)init {
  if (self = [super init]) {
    self.title = @"Menu";
    _tableViewStyle = UITableViewStyleGrouped;
    
    
    NSMutableArray* sections = [NSMutableArray array];
    NSMutableArray* items = [NSMutableArray array];
    
    [sections addObject:@"Simulate:"];
    
    NSMutableArray* section1 = [NSMutableArray array];
    [section1 addObject:[TTTableTextItem itemWithText:@"200 Messages" URL:@"demo://messages?amount=200"]];
    [section1 addObject:[TTTableTextItem itemWithText:@"500 Messages" URL:@"demo://messages?amount=500"]];
    [section1 addObject:[TTTableTextItem itemWithText:@"1,000 Messages" URL:@"demo://messages?amount=1000"]];
    [section1 addObject:[TTTableTextItem itemWithText:@"2,000 Messages" URL:@"demo://messages?amount=2000"]];
    [section1 addObject:[TTTableTextItem itemWithText:@"5,000 Messages" URL:@"demo://messages?amount=5000"]];
    [section1 addObject:[TTTableTextItem itemWithText:@"10,000 Messages" URL:@"demo://messages?amount=10000"]];
    [items addObject:section1];
        
    self.dataSource = [[TTSectionedDataSource alloc] initWithItems:items sections:sections];
    
    
  }  
  return self;
}

//- (id<UITableViewDelegate>)createDelegate {
//  return [[SettingsDelegate alloc] initWithController:self];
//}

@end
