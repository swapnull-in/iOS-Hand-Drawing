//
//  BezierInterpView.h
//  FreehandDrawingTut
 
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BezierInterpView : UIView

@property (nonatomic,retain)  UIImage *incrementalImage;
@property (nonatomic,retain)  UIBezierPath *path;
@property (nonatomic, retain) UIBezierPath *rectpath;
 
@property  NSInteger flag;
 

@end
