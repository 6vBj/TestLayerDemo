//
//  ViewController.m
//  TestLayerDemo
//
//  Created by liuwei on 16/10/19.
//  Copyright © 2016年 liuwei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CATextLayer * textLayer = [[CATextLayer alloc]init];
    textLayer.frame = self.view.bounds;
    
    textLayer.foregroundColor = [UIColor redColor].CGColor;
    textLayer.backgroundColor = [UIColor yellowColor].CGColor;
    textLayer.alignmentMode = kCAAlignmentNatural;
    textLayer.wrapped = YES;
    //避免变虚
    textLayer.contentsScale = [UIScreen mainScreen].scale;
   
    
    UIFont * font = [UIFont systemFontOfSize:25];
    CFStringRef fontName = (__bridge CFStringRef)font.fontName;
    CGFontRef fontRef = CGFontCreateWithFontName(fontName);
    textLayer.font = fontRef;
    textLayer.fontSize = font.pointSize;
    CGFontRelease(fontRef);
    
    NSString * textStr = @"avnsklvhsobvndkjbvndbnvdkfbvndfjkbndbnkdjbfnvkdjbfnkjbnkdjfbndjkbn";
    //可以用string，也可以用 attributedString
    textLayer.string = textStr;
    
    [self.view.layer addSublayer:textLayer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
