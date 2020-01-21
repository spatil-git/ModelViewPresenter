//
//  DataModel.swift
//  ModelViewPresenter
//
//  Created by Sanjay Patil on 1/20/20.
//  Copyright © 2020 Sanjay Patil. All rights reserved.
//

import Foundation
struct DataModel<T> {
    var model:[T] = []
    mutating func addElement(_ e:T) {
        model.insert(e, at: 0)
    }
    mutating func removeElement(at index:Int) {
        guard model.count >= index+1 else {
            return
        }
        model.remove(at: index)
    }
    var count:Int {
        return model.count
    }
    subscript(index:Int) -> T? {
        guard model.count >= index+1 else {
            return nil
        }
        return model[index]
    }
}
