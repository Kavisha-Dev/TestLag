//
//  PlusDataModel.swift
//  CommonFilesFramework
//
//  Created by Kavisha on 10/06/20.
//  Copyright © 2020 Kavisha. All rights reserved.
//

import Foundation

public struct PlusDataModel {
    
    public var sectionName: String = ""
    public var items: [Item] = [Item]()
    
    public struct Item  {
        public var mainHeading: String
        public var subHeading: String
        public var image: String
        public var subImage: String?
    }
    
    public static func getHowToData() -> [PlusDataModel]{
        var dataModel: [PlusDataModel] = [PlusDataModel]()
        
        var items1:[Item] = [Item]()
        
        let item10 = Item(mainHeading: "Highlight text and tap on ‘Share’", subHeading: "", image: "highlight", subImage: "howtoImg01")
        items1.append(item10)
        
        let item11 = Item(mainHeading: "Tap on the Qwote icon in Share sheet", subHeading: "", image: "tap", subImage: "howtoImg02")
        items1.append(item11)
        
        let item12 = Item(mainHeading: "Edit text, choose fonts & image size", subHeading: "You can edit text, mention the source. You can also select fonts, change background color and manage the size of the image to be shared (rectangle or square)", image: "edit", subImage: "howtoImg03")
        items1.append(item12)
        
        let firstModel = PlusDataModel(sectionName: "How to use Qwote", items: items1)
        dataModel.append(firstModel)
        return dataModel
    }
    
    
    
    
}
