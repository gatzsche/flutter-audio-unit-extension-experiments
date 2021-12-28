//
//  AudioUnitViewController.m
//  FlutterExampleAUV3
//
//  Created by Gabriel Gatzsche on 28.12.21.
//

#import "AudioUnitViewController.h"
#import "FlutterExampleAUV3AudioUnit.h"
@import Flutter;
#import "GeneratedPluginRegistrant.h"

static FlutterEngine *flutterEngine = NULL;
static FlutterViewController* flutterViewController;

@interface AudioUnitViewController ()

@end

@implementation AudioUnitViewController {
    AUAudioUnit *audioUnit;
}

- (instancetype)initWithCoder:(NSCoder *)coder{
    self = [super initWithCoder:coder];

    if(flutterEngine == NULL){
        flutterEngine = [[FlutterEngine alloc] initWithName:@"Flutter AUV3 Engine"];
        [flutterEngine run];
        [GeneratedPluginRegistrant registerWithRegistry:flutterEngine];
    }

    return self;
}

- (void) viewDidLoad {
    [super viewDidLoad];
    [self initFlutterViewController];

    if (!audioUnit) {
        return;
    }

    // Get the parameter tree and add observers for any parameters that the UI needs to keep in sync with the AudioUnit
}

- (void) initFlutterViewController {
    if(!flutterViewController){
        flutterViewController = [[FlutterViewController alloc] init];
        flutterEngine.viewController = flutterViewController;
    }
    [self addChildViewController:flutterViewController];
    flutterViewController.view.frame = self.view.frame;
    flutterViewController.view.backgroundColor = [UIColor redColor];
    [self.view addSubview:flutterViewController.view];
    [flutterViewController didMoveToParentViewController:self];
}


- (AUAudioUnit *)createAudioUnitWithComponentDescription:(AudioComponentDescription)desc error:(NSError **)error {
    audioUnit = [[FlutterExampleAUV3AudioUnit alloc] initWithComponentDescription:desc error:error];
    return audioUnit;
}

@end
