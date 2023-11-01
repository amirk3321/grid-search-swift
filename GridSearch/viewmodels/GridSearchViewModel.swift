//
//  GridSearchViewModel.swift
//  GridSearch
//
//  Created by MA on 01/11/2023.
//

import Foundation


class GridSearchViewMode: ObservableObject {
    
    
    
    @Published var appsResult = [Result]()
    
    init () {
        fetchMobileApps()
    }
    
    func fetchMobileApps(){
        
        
        guard let url = URL(string: "https://rss.applemarketingtools.com/api/v2/us/apps/top-free/50/apps.json") else {return}
        
        
        URLSession.shared.dataTask(with: url) {
            data, _ , err in
            
            
            if let err = err {
                
                print("apps not loaded error \(err)")
                
                
                return
            }
            
            
            
            do {
                
                
                let responseData = try? JSONDecoder().decode(GrdiSearchModel.self, from: data!)
                
                
                DispatchQueue.main.async {
                 
                    self.appsResult = (responseData?.feed.results)!
                }
                
                
            } catch {
                
                print("Error message \(err!)")
            }
          
            
            
        }.resume()
                
                
                
        
    }
}
