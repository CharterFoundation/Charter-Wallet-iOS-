//
//  CreateVC.m
//  HSEther
//
//  Created by 侯帅 on 2018/6/4.
//  Copyright © 2018年 com.houshuai. All rights reserved.
//

#import "CreateVC.h"
#import "HSEther.h"
@interface CreateVC ()
@property (weak, nonatomic) IBOutlet UILabel *centerLabel;

@end

@implementation CreateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"hs_createWithPwd";
    
    
    //创建钱包 等5秒钟，创建比较慢
    [HSEther hs_createWithPwd:@"11111111" block:^(NSString *address, NSString *keyStore, NSString *mnemonicPhrase, NSString *privateKey) {
        self.centerLabel.text = [NSString stringWithFormat:@"【钱包地址address】%@\n\n【官方keyStore】%@\n\n【助记词mnemonicPhrase】%@\n\n【私钥privateKey】%@\n",address,keyStore,mnemonicPhrase,privateKey];
    }];

}


@end
