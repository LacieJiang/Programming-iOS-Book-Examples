

#import "AppDelegate.h"
#import "MyClass.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    
    MyClass* m = [[MyClass alloc] init];
    NSLog(@"%@", [m publicMethod]);
    
    // NSLog(@"%@", [m myMethod]); // uncomment; compiler complains
                                // (this is new in LLVM 3.0; previously the compiler just warned)

    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
