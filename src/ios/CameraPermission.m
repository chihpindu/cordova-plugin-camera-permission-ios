//
//  CameraPermisstion.m
//

#import "CameraPermisstion.h"

@implementation CameraPermisstion

@synthesize callbackId;

- (void) checkAuthorization:(CDVInvokedUrlCommand *)command {

    // Check for permission
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];

    CDVPluginResult* result = nil;

    if (authStatus == AVAuthorizationStatusAuthorized) {
        NSLog(@"Authorization");
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Authorization"];
        [self invokeCallback:command withResult:result];
    }
    else if (authStatus == AVAuthorizationStatusDenied || authStatus == AVAuthorizationStatusRestricted) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Unauthorization"];
        [self invokeCallback:command withResult:result];
    }
    else {
        NSLog(@"Unauthorization");
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Unauthorization"];
        [self invokeCallback:command withResult:result];
    }
}

- (void) invokeCallback:(CDVInvokedUrlCommand *)command withResult:(CDVPluginResult *)result {
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
