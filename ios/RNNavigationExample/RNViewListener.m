#import "RNViewListener.h"
#import <React/RCTBridgeModule.h>

@interface RNViewListener () <RCTBridgeModule>
@end

@implementation RNViewListener

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(showActivities : (NSString *)accountId) {
    // Maybe we should re-parse the accountDetails into an Account object here
    dispatch_async(dispatch_get_main_queue(), ^{
        NSDictionary *info = @{ @"accountId" : accountId };
        [[NSNotificationCenter defaultCenter] postNotificationName:@"SHOW_ACTIVITIES" object:self userInfo:info];
    });
}

RCT_EXPORT_METHOD(showHoldings : (NSDictionary *)accountDetails) {
    dispatch_async(dispatch_get_main_queue(), ^{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"SHOW_HOLDINGS"
                                                            object:self
                                                          userInfo:accountDetails];
    });
}

@end
