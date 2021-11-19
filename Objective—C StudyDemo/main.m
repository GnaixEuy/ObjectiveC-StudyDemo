//
//  main.m
//  Objective—C StudyDemo
//
//  Created by 苏粤翔 on 2021/11/19.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
//下方大括号内为类的成员对象，特征
{
    @public //对外开放
    NSString* _name;
    NSString* sex;
    int _age;
}
//下方为类方法声明，行为
- (void) run;
@end

@implementation Person

- (void)run{
    NSLog(@"%@跑",_name);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        
        Person* person = [Person new];
        person->_name = @"小明";
        [person run];
        
    }
    return 0;
}
