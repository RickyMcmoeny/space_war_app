//
//  gameplay.m
//  Syuper_Sphehs_Wherz
//
//  Created by Dave on 2/10/15.
//  Copyright (c) 2015 Honest Abe Games. All rights reserved.
//

#import "gameplay.h"

@interface gameplay ()

@end

@implementation gameplay

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    SCNScene *scene = [SCNScene sceneNamed:@"gamePlay"];
    
    SCNNode *cameraNode = [SCNNode node];
    cameraNode.camera = [SCNCamera camera];
    [scene.rootNode addChildNode:cameraNode];
    
    cameraNode.position = SCNVector3Make(0, 0, 15);
    
    SCNNode *lightNode = [SCNNode node];
    lightNode.light = [SCNLight light];
    lightNode.light.type = SCNLightTypeOmni;
    lightNode.position = SCNVector3Make(0, 10, 10);
    [scene.rootNode addChildNode:lightNode];
    
    
    SCNNode *ambientLightNode = [SCNNode node];
    ambientLightNode.light = [SCNLight light];
    ambientLightNode.light.type = SCNLightTypeAmbient;
    ambientLightNode.light.color = [UIColor darkGrayColor];
    [scene.rootNode addChildNode:ambientLightNode];
    
    
    
    SCNView *scnView = (SCNView *)self.view;
    
    scnView.scene = scene;
    
    scnView.backgroundColor = [UIColor blackColor];
    
    
    
    

    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 200, 100)];
    myLabel.text = @"Test Label";
    [self.view addSubview:myLabel];
    myLabel.textColor = [UIColor whiteColor];
    
    
    
    
    
}

/*-(void) drawRect: (CGRect) rect
{
    
    
    CGColorRef *yellow = [[UIColor yellowColor] CGColor];
    
    CGContextRef *context = UIGraphicsGetCurrentContext();
    CGContextClearRect(*context, self.bounds);
    
    
    CGContextSetFillColorWithColor(*context, *yellow);
    CGContextFillRect(*context, CGRectMake(10, 10, 100, 100));
    
    
    
}*/

-(void) drawRect: (CGRect) rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    UIColor * redColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    
    CGContextSetFillColorWithColor(context, redColor.CGColor);
    CGContextFillRect(context, self.bounds);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
