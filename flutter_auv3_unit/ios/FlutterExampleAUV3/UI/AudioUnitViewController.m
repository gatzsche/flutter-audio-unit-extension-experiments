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
    
    if (!audioUnit) {
        return;
    }
    
    // Get the parameter tree and add observers for any parameters that the UI needs to keep in sync with the AudioUnit
}


- (AUAudioUnit *)createAudioUnitWithComponentDescription:(AudioComponentDescription)desc error:(NSError **)error {
    audioUnit = [[FlutterExampleAUV3AudioUnit alloc] initWithComponentDescription:desc error:error];
    
    return audioUnit;
}

@end
