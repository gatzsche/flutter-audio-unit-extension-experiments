//
//  AudioUnitViewController.m
//  FlutterExampleAUV3
//
//  Created by Gabriel Gatzsche on 28.12.21.
//

#import "AudioUnitViewController.h"
#import "FlutterExampleAUV3AudioUnit.h"

@interface AudioUnitViewController ()

@end

@implementation AudioUnitViewController {
    AUAudioUnit *audioUnit;
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
