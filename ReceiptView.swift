//
//  ReceiptView.swift
//  FoodToGo
//
//  Created by Jayda Fountain on 7/3/25.
//

import SwiftUI

/*
@ViewBuilder
private func printReceipt(orderNum: Binding<Int>) -> some View {
 */
    /*if(orderNum > 0){
        
    }*/
    /*
    Button(" -  "){
            if orderNum.wrappedValue > 0 {
                playOrderPop()
                orderNum.wrappedValue -= 1
            }
        }
        .background(RoundedRectangle(cornerRadius: 5).fill(.pastelOrange))
        .font(.custom("CloudyPeachesDemo", size: 25))
        .foregroundColor(.orange)
        .offset(x: 90)
        
        
    Button(" +  "){
            playOrderPop()
            orderNum.wrappedValue += 1
        }
        .background(RoundedRectangle(cornerRadius: 5).fill(.pastelGreen))
        .font(.custom("CloudyPeachesDemo", size: 25))
        .foregroundColor(.green)
        .offset(x: 140)
        
    Text("\(orderNum.wrappedValue)")
            .foregroundColor(.purple)
            .font(.custom("CloudyPeachesDemo", size: 25))
            .offset(x: 180)
}


struct ReceiptView: View {
    @State var app1Amount = 0
    var body: some View {
        NavigationView{
            ZStack{
                Color.pastelBlue.ignoresSafeArea()
                
                VStack{
                    
                    Text("Transaction")
                        .font(.custom("CloudyPeachesDemo", size: 35))
                        //.shadow(color: .black, radius: 20)
                        .foregroundStyle(.white.gradient)
                        .underline()
                        .offset(x: -75)
                    
                    NavigationLink(destination: OrderView(app1Amount: $app1Amount)) {
                    }
                    
                    
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    ReceiptView()
}
*/
