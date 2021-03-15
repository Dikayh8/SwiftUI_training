//
//  ApplicationList.swift
//  AfpProject
//
//  Created by Jonathan Duong on 15/03/2021.
//

import SwiftUI

struct ApplicationList: View {
    
    var myApplicationList: [Application]
    
    var body: some View {
        NavigationView {
            List(myApplicationList) { eachApps in
                ApplicationRow(myApplication: eachApps)
            }
            .navigationBarTitle("List Applications")
        }
    }
}

struct ApplicationList_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationList(myApplicationList: applicationsListData)
    }
}
