//
//  CameraPermisstion.h
//

#import <Cordova/CDVPlugin.h>
#import <AVFoundation/AVFoundation.h>

@interface CameraPermisstion : CDVPlugin

@property (copy)   NSString* callbackId;

- (void) checkAuthorization:(CDVInvokedUrlCommand *)command;
@end
