#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character *)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    timeSinceObstacle =0.0f;
    [self addObstacle];
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle += delta;
    
    //check to see if two seconds have passed
    if(timeSinceObstacle > 2.0f){
        //add new obstacle
        [self addObstacle];
        
        //then restart the times;
        timeSinceObstacle = 0.0f;
    }
    
}

// put new methods here
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    
    [character flap];
}


@end
