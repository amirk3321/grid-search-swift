//
//  ContentView.swift
//  GridSearch
//
//  Created by MA on 31/10/2023.
//

import SwiftUI




import Kingfisher


struct ContentView: View {
    
    @ObservedObject var vm = GridSearchViewMode()
 
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                
              
                
                LazyVGrid(columns: [
                    GridItem(.flexible(minimum: 50, maximum: 110),spacing: 12,alignment: .top),
                    GridItem(.flexible(minimum: 50, maximum: 110),spacing: 12,alignment: .top),
                    GridItem(.flexible(minimum: 50, maximum: 110),spacing: 12,alignment: .top),
                ],spacing: 10) {
                    
                   
                    ForEach (vm.appsResult) {
                        appItem in
                        
                        VStack(alignment: .leading,spacing: 10) {
                            
                            KFImage(URL(string: appItem.artworkUrl100)).frame(width: 150,height: 150)
                              
                
                            Text(appItem.name)
                                .font(.system(size: 16,weight: .bold))
                                .padding()
                            Text(appItem.releaseDate)
                                .font(.system(size: 14,weight: .regular))
                                .padding()
                            Text(appItem.kind)
                                .font(.system(size: 14,weight: .bold))
                                .foregroundColor(.gray)
                                .padding()
                            
                            
                        }
//                            .background(.orange)
                        
                    }
                    
                    
                }.padding()
                
                
                
                
            }.navigationTitle(Text("Grid Search"))
            
        }
        
    }
    

}








#Preview {
    ContentView()
}
