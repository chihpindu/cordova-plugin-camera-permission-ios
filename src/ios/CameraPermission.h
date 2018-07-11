//
//  CameraPermission.h
//

#import <Cordova/CDVPlugin.h>
#import <AVFoundation/AVFoundation.h>

@interface CameraPermission : CDVPlugin

@property (copy)   NSString* callbackId;

- (void) checkAuthorization:(CDVInvokedUrlCommand *)command;
@end
