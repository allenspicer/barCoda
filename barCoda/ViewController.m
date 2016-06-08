//
//  ViewController.m
//  barCoda
//
//  Created by Allen Spicer on 6/8/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIView * previewView;
@property (nonatomic, strong) AVCaptureSession* session;
@property (nonatomic, strong) AVCaptureVideoPreviewLayer* previewLayer;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.session = [[AVCaptureSession alloc]init];
    self.previewLayer = [AVCaptureVideoPreviewLayer layerWithSession:self.session];
    self.previewView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, self.view.bounds.size.width*0.9, self.view.bounds.size.height*0.9)];
    [self.view addSubview:self.previewView];
    [self.previewView.layer addSublayer:self.previewLayer];

}



@end
