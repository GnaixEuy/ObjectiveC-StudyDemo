//
//  main.m
//  02-对象访问自身属性
//
//  Created by 苏粤翔 on 2021/11/20.
//

#import <Foundation/Foundation.h>


//isa指针指向代码段中类的地址，即储存代码的内存区域
@interface Student : NSObject
{
    @public
    NSString* _name;
    float _weight;
    NSString* _sex;
    int _age;
}
- (void) run;
- (void) eat;
@end

@implementation Student

-(void) run{
    NSLog(@"我跑了。。。我体重减轻了");
    _weight -= 0.5f;
    NSLog(@"跑完了我的体重是%.2f",_weight);
}

-(void) eat{
    NSLog(@"我吃了");
    _weight += 0.7f;
    NSLog(@"哎，我的体重是%.2f", _weight);
}

@end

int main(int argc, const char* argv[]){
    
    NSLog(@"hello");
    
    Student* stu = [Student new];
    stu->_weight =60.4f;
    stu->_name = @"小明";
    
    [stu run];
    [stu eat];
    [stu run];
    [stu run];
    [stu run];
    
    return 0;
}
