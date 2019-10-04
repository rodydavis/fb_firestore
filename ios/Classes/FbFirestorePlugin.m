#import "FbFirestorePlugin.h"
#import <fb_firestore/fb_firestore-Swift.h>

@implementation FbFirestorePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFbFirestorePlugin registerWithRegistrar:registrar];
}
@end
