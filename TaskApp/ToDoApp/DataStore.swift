//
//  DataStore.swift
//  ToDoApp
//
//  Created by Jonathan Duong on 22/02/2021.
//

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var toDoItem = String()
}

class TaskStore : ObservableObject {
    @Published var tasks = [Task]()
}
