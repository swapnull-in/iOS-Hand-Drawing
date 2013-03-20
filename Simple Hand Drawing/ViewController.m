//
//  ViewController.m
//  Simple Hand Drawing
//
//  Created by Swapnil Godambe on 20/03/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize drawingView = _drawingView;
@synthesize eraserButton = _eraserButton;
@synthesize eraserActived = _eraserActived;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _eraserActived = YES;
}

- (void)viewDidUnload
{
    [self setDrawingView:nil];
    [self setEraserButton:nil]; 
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (IBAction)btnEraser:(id)sender {
    
    [self sendNotification];
    
}

- (IBAction)clearViewClicked:(id)sender { 
    
    if(_drawingView.incrementalImage){
        _drawingView.incrementalImage = FALSE;
        [_drawingView setNeedsDisplay];
        
        _eraserActived = NO;   
        
        [self sendNotification];
        
    }
    
}

- (void)sendNotification
{
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    
    if (_eraserActived) {
        _eraserActived = NO;
        
        [_eraserButton setImage:[UIImage imageNamed:@"pencil.png"] forState:UIControlStateNormal];
        
        [dict setValue:[NSString stringWithFormat:@"%d", 0] forKey:@"eraser"];
        
    }else{
        _eraserActived = YES;
        
        [_eraserButton setImage:[UIImage imageNamed:@"eraser.png"] forState:UIControlStateNormal];
        
        [dict setValue:[NSString stringWithFormat:@"%d", 1] forKey:@"eraser"];
    }
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"eraserActived" object:self userInfo:dict];
}


@end
