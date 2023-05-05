//
//  ContentView.swift
//  Calculadora3
//
//  Created by sofiadinizms on 02/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var category = ""
    
    var categoryYearsData: [Int] = [2,3,2,2,2,3,2,2,1,2,2,4,3,3,2,1,2]
    var categoryData: [String] = ["Roupa de banho", "Blusa de algodão branca", "Blusa colorida", "Blusa de seda", "Blusa de material sintético", "Jaqueta jeans", "Calça jeans", "Saia jeans", "Vestido casual", "Vestido arrumado", "Vestido de alta costura", "Casaco de lã", "Casaco de lã misturada", "Casaco de material sintético", "Roupa íntima", "Meia", "Loungerie"]
    
    var body: some View {
        VStack {
            Form{
                Text("Tipo da peça")
                Text("Data da compra")
                Picker("Tipo da peça", selection: $category) {
                    ForEach(categoryData, id: \.self) {
                        Text("\($0)").tag("\($0)")
                        }
                    
                    
                }
                DatePicker(selection: .constant(Date()), label: { Text("Date") })
                
                
            }
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
    

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
