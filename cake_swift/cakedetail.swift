//
//  cakedetail.swift
//  cake_swift
//
//  Created by cui yansong on 14-6-11.
//  Copyright (c) 2014年 pushi. All rights reserved.
//

import Foundation
import UIkit

class cakedetail:UIViewController,UIScrollViewDelegate{
    var scrolltableview:UIScrollView?
    var cakeimg:UIImageView?
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.whiteColor()
        scrolltableview=UIScrollView(frame:CGRectMake(0, 0, 320, self.view.frame.size.height))
        scrolltableview!.contentSize=CGSizeMake(self.view.frame.size.width, 320*2+200)
        scrolltableview!.scrollEnabled=true;
        scrolltableview!.delegate=self;
        self.view.addSubview(scrolltableview)
        
        var bg=UIImageView(frame:CGRectMake(0, 0, 320 , 320))
        bg.image=UIImage(named:"cakedetailbg")
        scrolltableview!.addSubview(bg)
        
        cakeimg!.frame=CGRectMake(65, 60, 190, 190)
        cakeimg!.autoresizingMask=UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleRightMargin
        cakeimg!.layer.masksToBounds = true
        cakeimg!.layer.cornerRadius = 100
        cakeimg!.layer.borderColor=UIColor.whiteColor().CGColor
        cakeimg!.layer.borderWidth = 3.0;
        cakeimg!.layer.rasterizationScale = UIScreen.mainScreen().scale;
        cakeimg!.layer.shouldRasterize = true
        cakeimg!.clipsToBounds = true
        bg.addSubview(cakeimg)
        
        var flowerbg=UIImageView(frame:CGRectMake(0, 320, 320 , 320))
        flowerbg.image=UIImage(named:"flowerbg.jpg")
        scrolltableview!.addSubview(flowerbg)
        var flowerbg1=UIImageView(frame:CGRectMake(0, 640, 320 , 320))
        flowerbg1.image=UIImage(named:"flowerbg.jpg")
        scrolltableview!.addSubview(flowerbg1)
        
        var touming=UIImageView(frame:CGRectMake(0,320, 320, 640))
        touming.image=UIImage(named:"透明背景")
        scrolltableview!.addSubview(touming)

       var cakebook=UILabel(frame:CGRectMake(10, 20, 200, 60))
        cakebook.backgroundColor=UIColor.clearColor()
        cakebook.textColor=UIColor.whiteColor()
        cakebook.font=UIFont(name:"RTWS DingDing Demo",size:35)
        cakebook.text="订购消息"
        touming.addSubview(cakebook)
        
        var cakebook1=UILabel(frame:CGRectMake(10, 130, 200, 60))
        cakebook1.backgroundColor=UIColor.clearColor()
        cakebook1.textColor=UIColor.whiteColor()
        cakebook1.font=UIFont(name:"RTWS DingDing Demo",size:35)
        cakebook1.text="蛋糕简介"
        touming.addSubview(cakebook1)

        var cakebook2=UILabel(frame:CGRectMake(10, 200, 200, 60))
        cakebook2.backgroundColor=UIColor.clearColor()
        cakebook2.textColor=UIColor.whiteColor()
        cakebook2.font=UIFont(name:"RTWS DingDing Demo",size:35)
        cakebook2.text="配送范围及收费标准:"
        touming.addSubview(cakebook2)

        
        
        
    }
}