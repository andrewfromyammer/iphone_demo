
#import "Messages.h"


@implementation Messages

- (id)initWithNavigatorURL:(NSURL*)URL query:(NSDictionary*)query {
  if (self = [super initWithNavigatorURL:URL query:query]) {
    
    int amount = [[query objectForKey:@"amount"] intValue];
    
    self.title = [NSString stringWithFormat:@"%d Messages", amount];
    self.variableHeightRows = YES;

    NSMutableArray* items = [NSMutableArray array];
    
    for (int i=0; i<amount; i++)
      [items addObject:[TTTableMessageItem itemWithTitle:@"Bob Jones" caption:[NSString stringWithFormat:@"Some text just for testing #%d", i]
                                 text:@"More testing text" timestamp:[NSDate date]
                                 imageURL:@"bundle://penguin.png" URL:@"tt://tableItemTest"]];
    
    self.dataSource = [[TTListDataSource alloc] initWithItems:items];
    
    
  }  
  return self;
}

//- (id<UITableViewDelegate>)createDelegate {
//  return [[SettingsDelegate alloc] initWithController:self];
//}

@end
