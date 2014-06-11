//
//  HomeViewController.swift
//  cake_swift
//
//  Created by cui yansong on 14-6-10.
//  Copyright (c) 2014年 pushi. All rights reserved.
//

import Foundation
import UIkit

class HomeViewController:UIViewController,UITableViewDelegate,UITableViewDataSource{
   override func viewDidLoad()
   {
       super.viewDidLoad()
       self.view.backgroundColor=UIColor.whiteColor()
//       var myDelegete = UIApplication.sharedApplication().delegate as AppDelegate
//       myDelegete.titleLabel!.text = "dada"
    var subtableview=UITableView(frame:CGRectMake(0, 0, 320, UIScreen.mainScreen().bounds.size.height-44-24),style:.Plain)
    subtableview.delegate=self
    subtableview.dataSource=self
    subtableview.scrollEnabled=true
    subtableview.separatorStyle=UITableViewCellSeparatorStyle.None;
    subtableview.backgroundColor=UIColor.clearColor();
    self.view.addSubview(subtableview)


    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return 10
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat
    {
       return 250
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        var titleCellIdentifier="cell:\(indexPath.section)__\(indexPath.row)"
        var cell=tableView.dequeueReusableCellWithIdentifier(titleCellIdentifier)
       if cell==nil       {
            cell=UITableViewCell(style:.Value1,reuseIdentifier:titleCellIdentifier)
        }else
       {
//            cell.contentView!.subviews
        }
        
        var image=UIImageView(image:UIImage(named:"line"))
        image.frame=CGRectMake(0,0,320,1)
        cell.addSubview(image)
        var image1=UIImageView(image:UIImage(named:"line"))
        image1.frame=CGRectMake(0,250,320,1)
        cell.addSubview(image1)
        var image2=UIImageView(image:UIImage(named:"cellbg"))
        image2.frame=CGRectMake(0,0,320,250)
        cell.contentView!.addSubview(image2)
        var cakeimage:UIImageView?
        var cakename=UILabel(frame:CGRectMake(140, 20, 200, 60))
        cakename.backgroundColor=UIColor.clearColor()
        cakename.textColor=UIColor(red: 0, green:182.0/255.0, blue:193.0/255.0, alpha:1)
        cakename.font=UIFont(name:"RTWS DingDing Demo",size:50)
//        switch indexPath.row{
//        case 0:
            cakeimage=UIImageView(image: UIImage(named:"起司蛋糕.jpg"))
            cakename.text="起司蛋糕"
//        default:
//            break
//        }
        cakeimage!.frame=CGRectMake(5, 5, 125, 125)
        cakeimage!.autoresizingMask=UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleRightMargin
        cakeimage!.layer.masksToBounds = true
        cakeimage!.layer.cornerRadius = 50
        cakeimage!.layer.borderColor=UIColor.whiteColor().CGColor
        cakeimage!.layer.borderWidth = 3.0;
        cakeimage!.layer.rasterizationScale = UIScreen.mainScreen().scale;
        cakeimage!.layer.shouldRasterize = true
        cakeimage!.clipsToBounds = true
        cell!.contentView!.addSubview(cakeimage)
        cell!.contentView!.addSubview(cakename)

        return cell as UITableViewCell
    }
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
      var view =  cakedetail()
        var cakeimage=UIImageView()
         cakeimage=UIImageView(image: UIImage(named:"起司蛋糕.jpg"))
        view.cakeimg=cakeimage
        self.navigationController.pushViewController(view,animated:true)
    }
}