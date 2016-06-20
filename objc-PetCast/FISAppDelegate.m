//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISDog.h"
#import "FISPet.h"
@implementation FISAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //we made a new dog with the same methods in FISDog
    FISDog *newDog = [[FISDog alloc]init];
    [newDog makeASound]; //the newDog can now makeASound in FISDog
    NSLog(@"%@", [newDog makeASound]);
    [newDog assaultTheMailman]; //the newDog can now assaultTheMailman in FISdog
    NSLog(@"%@",[newDog assaultTheMailman]);
    
    //we made a new pet (the pet can be anything).
    FISPet *pet = [[FISPet alloc]init];
    [pet makeASound];// because FISPet is a superclass, it knows how to "MakeASound but not the same sound as FISDog.
    NSLog(@"old pet : %@", [pet makeASound]);
    
    //we made a new pet (goat) but it has the same "action" as a FISDog
    FISPet *goat = [[FISDog alloc]init];
    
    //our "goat" can now "Woof"
    NSString *goatMakesDogSound = [goat makeASound];
    NSLog(@"%@", goatMakesDogSound);
    
    //we had to cast assaultAMailman to our pet "Goat" so that the goat can assault a mailman
    NSString *goatie = [(FISDog *)goat assaultTheMailman];
    NSLog(@"goat assault: %@", goatie);
    
  
    return YES;
}

@end
