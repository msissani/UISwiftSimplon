//
//  FavorisView.swift
//  MyTravelProject
//
//  Created by Paliani Théodore on 15/09/2021.
//

import SwiftUI



struct HistoFav: Identifiable {
    var id = UUID()
    var image: String
    var country: String
    var city: String
    var date: String
}


var historical: [HistoFav] = [

    HistoFav(image: "tokyo", country: "Japan", city: "Tokyo", date: "Added the 13/09/2019"),
    
    HistoFav(image: "shanghai", country: "China", city: "Shanghai", date: "Added the 12/11/2018"),
    
    HistoFav(image: "seoul", country: "South Korea", city: "Seoul", date: "Added the 28/07/2018"),
    
    HistoFav(image: "losangeles", country: "United-States", city: "Los angeles", date:  "Added the 18/09/2017"),
    
    HistoFav(image: "erevan", country: "Armenia", city: "Erevan", date: "Added the 30/05/2015"),
    
    HistoFav(image: "lisbonne", country: "Portugal", city: "Lisbonne", date: "Added the 31/04/2015"),
    
    HistoFav(image: "london", country: "England", city: "London",date: "added the 24/01/2014"),
]




struct FavorisView: View {
    var country = ["Japon", "Chine","South Korea", "United-States","Armenia","Portugal","England"]
    var body: some View {
    TabView{
        NavigationView {
                List(historical) { item in
                    Image(item.image)
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                        .cornerRadius(8.0)
                        .scaledToFill()
                        .padding(.all)
                    
                    VStack(alignment: .leading, spacing: nil)
                    {
                        Text(item.country)
                            .font(.subheadline)
                            .bold()
                        Text(item.city)
                            .font(.caption)
                            .foregroundColor(.gray)
                            .bold()
                        Text(item.date)
                            .font(.footnote)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "suit.heart.fill")
                        .foregroundColor(.red)
                    
                }.navigationBarTitle("Favorites")
                .navigationBarTitleDisplayMode(.inline)
                .ignoresSafeArea()
            
//            var country = ["Japon", "Chine","South Korea", "United-States","Armenia","Portugal","England"]
                
            }
        }
    }
struct FavorisView_Previews: PreviewProvider {
    static var previews: some View {
        FavorisView()
    }
}
}
