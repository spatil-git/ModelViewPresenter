//
//  Presenter.swift
//  ModelViewPresenter
//
//  Created by Sanjay Patil on 1/20/20.
//  Copyright © 2020 Sanjay Patil. All rights reserved.
//

import Foundation
class Presenter {
    private var model:DataModel<Date> = DataModel()
    
    func addElement(_ element:Date)  {
        self.model.addElement(element)
    }
    
    func removeElement(at index:Int) {
        self.model.removeElement(at:index)
    }
    
    var count:Int {
        self.model.count
    }
    subscript(index:Int) -> Date? {
        return self.model[index]
    }
}
