//
//  main.m
//  HW1
//
//  Created by dwl on 2021/9/22.
//  Copyright © 2021 dwl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Trousers.h"
#import "UpperGarment.h"

NSInteger getScore(UpperGarment* u,Trousers* t);
NSString* getDate(NSInteger date);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        UpperGarment* ug1=[[UpperGarment alloc] init];
        ug1.type=@"风衣";
        ug1.color=@"棕色";
        ug1.depth=5;
        UpperGarment* ug2=[[UpperGarment alloc] init];
        ug2.type=@"夹克";
        ug2.color=@"蓝色";
        ug2.depth=4;
        UpperGarment* ug3=[[UpperGarment alloc] init];
        ug3.type=@"衬衫";
        ug3.color=@"红色";
        ug3.depth=3;
        UpperGarment* ug4=[[UpperGarment alloc] init];
        ug4.type=@"T恤";
        ug4.color=@"黄色";
        ug4.depth=2;
        UpperGarment* ug5=[[UpperGarment alloc] init];
        ug5.type=@"背心";
        ug5.color=@"白色";
        ug5.depth=1;
        NSMutableArray* ug=[NSMutableArray arrayWithCapacity:0];
        [ug addObjectsFromArray:@[ug1,ug2,ug3,ug4,ug5]];
        Trousers* t1=[[Trousers alloc] init];
        t1.type=@"短裤";
        t1.color=@"白色";
        t1.depth=1;
        Trousers* t2=[[Trousers alloc] init];
        t2.type=@"沙滩裤";
        t2.color=@"黄色";
        t2.depth=2;
        Trousers* t3=[[Trousers alloc] init];
        t3.type=@"运动裤";
        t3.color=@"红色";
        t3.depth=3;
        Trousers* t4=[[Trousers alloc] init];
        t4.type=@"牛仔裤";
        t4.color=@"蓝色";
        t4.depth=4;
        Trousers* t5=[[Trousers alloc] init];
        t5.type=@"工装裤";
        t5.color=@"棕色";
        t5.depth=5;
        Trousers* t6=[[Trousers alloc] init];
        t6.type=@"长裤";
        t6.color=@"黑色";
        t6.depth=6;
        NSMutableArray* t=[NSMutableArray arrayWithCapacity:0];
        [t addObjectsFromArray:@[t1,t2,t3,t4,t5,t6]];
        NSInteger MaxScore=0, MaxDate=0,MaxUG=-1,MaxT=-1;
        
        for (int i=1; i<=7; i++) {
            NSInteger id_ug=arc4random_uniform(5);
            NSInteger id_t=arc4random_uniform(6);
            while (![ug[id_ug] check:i]) {
                id_ug=(id_ug+1)%5;
            }
            [ug[id_ug] setDate:i];
            while (![t[id_t] check:i]) {
                id_t=(id_t+1)%6;
            }
            [t[id_t] setDate:i];
            NSInteger score=getScore(ug[id_ug], t[id_t]);
            NSLog(@"==========%@==========",getDate(i));
            NSLog(@"%@%@ + %@%@",[ug[id_ug] color],[(Clothing*)[ug objectAtIndex:id_ug] type],[t[id_t] color],[(Clothing*)[t objectAtIndex:id_t] type]);
            NSLog(@"颜色深度：上衣%ld & 裤子%ld",[ug[id_ug] depth],[t[id_t] depth]);
            NSLog(@"搭配分数：%ld",score);
            if(score>MaxScore){
                MaxScore=score;
                MaxDate=i;
                MaxUG=id_ug;
                MaxT=id_t;
            }
        }
        NSLog(@"=======================");
        NSLog(@"%@搭配分数最高，得分%ld",getDate(MaxDate),MaxScore);
        NSLog(@"这天的搭配是%@%@ + %@%@",[ug[MaxUG] color],[(Clothing*)[ug objectAtIndex:MaxUG] type],[t[MaxT] color],[(Clothing*)[t objectAtIndex:MaxT] type]);
    }
    return 0;
}

NSInteger getScore(UpperGarment* u,Trousers* t){
    return ([t depth]-[u depth]+5)*10;
}

NSString* getDate(NSInteger date){
    switch (date){
        case 1:
            return @"星期一：";
        case 2:
            return @"星期二：";
        case 3:
            return @"星期三：";
        case 4:
            return @"星期四：";
        case 5:
            return @"星期五：";
        case 6:
            return @"星期六：";
    }
    return @"星期天：";
}
