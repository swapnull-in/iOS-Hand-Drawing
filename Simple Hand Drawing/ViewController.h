//
//  ViewController.h
//  Simple Hand Drawing
//
//  Created by Swapnil Godambe on 20/03/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BezierInterpView.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet BezierInterpView *drawingView;
 
@property BOOL eraserActived;

@property (strong, nonatomic) IBOutlet UIButton *eraserButton;

- (IBAction)btnEraser:(id)sender;

- (IBAction)clearViewClicked:(id)sender;
 
@end
