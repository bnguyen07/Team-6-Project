//
//  HelloWorldLayer.m
//  AnimBear
//
//  Created by Ray Wenderlich on 3/12/13.
//  Copyright Razeware LLC 2013. All rights reserved.
//

#import "HelloWorldLayer.h"

@interface HelloWorldLayer ()
{
    BOOL bearMoving;
}

@property (nonatomic, strong) CCSprite *bear;
@property (nonatomic, strong) CCAction *walkAction;
@property (nonatomic, strong) CCAction *moveAction;

@property (nonatomic, strong) CCSprite *bird;

@end

@implementation HelloWorldLayer

+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	HelloWorldLayer *layer = [HelloWorldLayer node];
	[scene addChild: layer];
	return scene;
}

-(id) init {
    if((self = [super init])) {
        
        [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"AnimBear.plist"];
        
        CCSpriteBatchNode *spriteSheet = [CCSpriteBatchNode batchNodeWithFile:@"AnimBear.png"];
        _bird = [CCSprite spriteWithFile:@"bird.png"];
        _bird.position = ccp(0, 0);
        
        [self addChild:spriteSheet];
        
        NSMutableArray *walkAnimFrames = [NSMutableArray array];
        for (int i=1; i<=8; i++) {
            [walkAnimFrames addObject:
                [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:
                    [NSString stringWithFormat:@"bear%d.png",i]]];
        }
        
        CCAnimation *walkAnim = [CCAnimation animationWithSpriteFrames:walkAnimFrames delay:0.1f];
        
        CGSize winSize = [[CCDirector sharedDirector] winSize];
        self.bear = [CCSprite spriteWithSpriteFrameName:@"bear1.png"];
        self.bear.position = ccp(winSize.width/2, winSize.height/2);
        self.walkAction = [CCRepeatForever actionWithAction:
            [CCAnimate actionWithAnimation:walkAnim]];
        //[self.bear runAction:self.walkAction];
        [spriteSheet addChild:self.bear];
       
        self.touchEnabled = YES;
        
    }
    return self;
}

- (void)registerWithTouchDispatcher
{
    [[[CCDirector sharedDirector] touchDispatcher] addTargetedDelegate:
           self priority:0 swallowsTouches:YES];
}
 
- (BOOL)ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    return YES;
}
 
- (void)ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event
{
    CGPoint touchLocation = [self convertTouchToNodeSpace:touch];
    CGSize screenSize = [[CCDirector sharedDirector] winSize];
    float bearVelocity = screenSize.width / 3.0;
    CGPoint moveDifference = ccpSub(touchLocation, self.bear.position);
    float distanceToMove = ccpLength(moveDifference);
    float moveDuration = distanceToMove / bearVelocity;
    if (moveDifference.x < 0) {
        self.bear.flipX = NO;
    } else {
        self.bear.flipX = YES;
    }
    [self.bear stopAction:self.moveAction];
 
    if (!bearMoving) {
        [self.bear runAction:self.walkAction];
    }
     
    self.moveAction = [CCSequence actions:
        [CCMoveTo actionWithDuration:moveDuration position:touchLocation],
        [CCCallFunc actionWithTarget:self selector:@selector(bearMoveEnded)],
        nil];
     
    [self.bear runAction:self.moveAction];
    bearMoving = YES;

}
- (void)bearMoveEnded
{
    [self.bear stopAction:self.walkAction];
    bearMoving = NO;
}

@end
