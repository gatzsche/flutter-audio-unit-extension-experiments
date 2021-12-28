//
//  FlutterExampleAUV3AudioUnit.h
//  FlutterExampleAUV3
//
//  Created by Gabriel Gatzsche on 28.12.21.
//

#import <AudioToolbox/AudioToolbox.h>
#import "FlutterExampleAUV3DSPKernelAdapter.h"

// Define parameter addresses.
extern const AudioUnitParameterID myParam1;

@interface FlutterExampleAUV3AudioUnit : AUAudioUnit

@property (nonatomic, readonly) FlutterExampleAUV3DSPKernelAdapter *kernelAdapter;
- (void)setupAudioBuses;
- (void)setupParameterTree;
- (void)setupParameterCallbacks;
@end
