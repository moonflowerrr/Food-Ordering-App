//
//  OrderView.swift
//  FoodToGo
//
//  Created by Jayda Fountain on 7/1/25.
//

import SwiftUI
import AVFoundation

var MenuMusic: AVAudioPlayer?
//var menuItems = ["", "Loaded Fries"]

func playOrderPop() {
    if let url = Bundle.main.url(forResource: "bubble-pop-06-351337", withExtension: "mp3") {
            //print("Found local bundle URL: \(url.absoluteString)")
            do {
                MenuMusic = try AVAudioPlayer(contentsOf: url)
                MenuMusic?.prepareToPlay()
                MenuMusic?.play()
                //print("Music playing from bundle!")
            } catch {
                print("Error playing from bundle: \(error.localizedDescription)")
            }
        } else {
            print("Error: Music file 'bubble-pop-06-351337' not found in app bundle.")
        }
    
}

@ViewBuilder
private func orderAmount(orderNum: Binding<Int>) -> some View {
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


struct OrderView: View {
    @State var showHome = false
    
    //Appetizer vars
    @State var app1Amount = 0
    @State var app2Amount = 0
    @State var app3Amount = 0
    @State var app4Amount = 0
    
    //Entree vars
    @State var entree1Amount = 0
    @State var entree2Amount = 0
    @State var entree3Amount = 0
    @State var entree4Amount = 0
    @State var entree5Amount = 0
    @State var entree6Amount = 0
    @State var entree7Amount = 0
    @State var entree8Amount = 0
    
    //Drink vars
    @State var drink1Amount = 0
    @State var drink2Amount = 0
    @State var drink3Amount = 0
    @State var drink4Amount = 0
    
    //Dessert vars
    @State var dessert1Amount = 0
    @State var dessert2Amount = 0
    @State var dessert3Amount = 0
    @State var dessert4Amount = 0
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image(.pinkPlaid)
                    .resizable()
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack(spacing: 10){
                        ZStack{
                            Button("", systemImage: "arrowshape.backward.fill"){
                                playOrderPop()
                                showHome.toggle()
                            }
                            .frame(width: 50, height: 40)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.pastelBlue))
                            .offset(x: -150)
                            .foregroundStyle(.blue.gradient)
                            
                            Text("Menu")
                                .padding(.top, 15).padding(.bottom, 10)
                                .frame(width: 200)
                                .background(RoundedRectangle(cornerRadius: 20).fill(.pastelPink))
                                .foregroundStyle(.lightPink.gradient)
                                .font(.custom("CloudyPeachesDemo", size: 35))
                                .shadow(color: .white, radius: 20)
                            //.offset(y: 100)
                        }
                        
                        Text("Appetizers:")
                            .foregroundStyle(.purple.gradient)
                            .font(.custom("CloudyPeachesDemo", size: 30))
                            .offset(x: -100)
                        
                        
                        //APPETIZER 1
                        ZStack{
                            //Color.pastelPink
                            Text("1. Loaded Fries - $9.75")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 21))
                                .offset(x: -70)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $app1Amount)
                        }
                        //.background(RoundedRectangle(cornerRadius: 10).fill(.pastelPink))
                        
                        //APPETIZER 2
                        ZStack{
                            //Color.pastelPink
                            Text("2. Mozerella Sticks - $8.75")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 18))
                                .offset(x: -65)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $app2Amount)
                        }
                        
                        //APPETIZER 3
                        ZStack{
                            //Color.pastelPink
                            Text("3. Cauliflower Boneless\n Buffalo Wings - $10.25")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 18))
                                .offset(x: -80)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $app3Amount)
                        }
                        
                        //APPETIZER 4
                        ZStack{
                            //Color.pastelPink
                            Text("4. Gyoza - $7.99")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 23))
                                .offset(x: -95)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $app4Amount)
                        }
                        
                        
                        Text("Entrees:")
                            .foregroundStyle(.purple.gradient)
                            .font(.custom("CloudyPeachesDemo", size: 30))
                            .offset(x: -123)
                        
                        //ENTREE 1
                        ZStack{
                            Text("5. Margehrita Pizza - $14.75")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 17))
                                .offset(x: -65)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $entree1Amount)
                        }
                        
                        //ENTREE 2
                        ZStack{
                            Text("6. Burger and Fries - 15.50")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 18))
                                .offset(x: -65)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $entree2Amount)
                        }
                        
                        //ENTREE 3
                        ZStack{
                            Text("7. Korean Corndog - $11.45")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 18))
                                .offset(x: -65)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $entree3Amount)
                        }
                        
                        //ENTREE 4
                        ZStack{
                            Text("8. Shoyu Ramen - $15.75")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 20))
                                .offset(x: -65)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $entree4Amount)
                        }
                        
                        //ENTREE 5
                        ZStack{
                            Text("9. Chili Dogs with Curly\n Fries - $14.75")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 18))
                                .offset(x: -80)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $entree5Amount)
                        }
                        
                        //ENTREE 6
                        ZStack{
                            Text("10. Acai Bowl - $12.50")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 21))
                                .offset(x: -75)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $entree6Amount)
                        }
                        
                        //ENTREE 7
                        ZStack{
                            Text("11. Pasta Salad - $13.75")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 21))
                                .offset(x: -65)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $entree7Amount)
                        }
                        
                        //ENTREE 8
                        ZStack{
                            Text("12. Baked Mac & Cheese\n - $12.75")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 18))
                                .offset(x: -75)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $entree8Amount)
                        }
                        
                        
                        Text("Drinks:")
                            .foregroundStyle(.purple.gradient)
                            .font(.custom("CloudyPeachesDemo", size: 30))
                            .offset(x: -135)
                        
                        //DRINK 1
                        ZStack{
                            Text("13. Soft Drinks - $3.50")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 22))
                                .offset(x: -73)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $drink1Amount)
                        }
                        
                        //DRINK 2
                        ZStack{
                            Text("14. Green Smoothie - $5.00")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 19))
                                .offset(x: -65)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $drink2Amount)
                        }
                        
                        //DRINK 3
                        ZStack{
                            Text("15. Blended Mocha - $6.75")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 18))
                                .offset(x: -75)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $drink3Amount)
                        }
                        
                        //DRINK 4
                        ZStack{
                            Text("16. Boba - $7.50")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 22))
                                .offset(x: -108)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $drink4Amount)
                        }
                        
                        Text("Dessert:")
                            .foregroundStyle(.purple.gradient)
                            .font(.custom("CloudyPeachesDemo", size: 30))
                            .offset(x: -125)
                        
                        //DESSERT 1
                        ZStack{
                            Text("17. Ice Cream - $4.50")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 22))
                                .offset(x: -80)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $dessert1Amount)
                        }
                        
                        //DESSERT 2
                        ZStack{
                            Text("18. Mini Cheesecake - $5.50")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 18))
                                .offset(x: -65)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $dessert2Amount)
                        }
                        
                        //DESSERT 3
                        ZStack{
                            Text("19. Churros - $3.25")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 22))
                                .offset(x: -88)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $dessert3Amount)
                        }
                        
                        //DESSERT 4
                        ZStack{
                            Text("20. Fruit Tart - $4.75")
                                .foregroundColor(.lightPink)
                                .font(.custom("CloudyPeachesDemo", size: 22))
                                .offset(x: -72)
                                .shadow(color: .white, radius: 20)
                            
                            orderAmount(orderNum: $dessert4Amount)
                        }
                        
                        Button("Continue"){playOrderPop()}
                            .padding(.top, 15).padding(.bottom, 10)
                            .frame(width: 200)
                            .background(RoundedRectangle(cornerRadius: 20).fill(.pastelPurple))
                            .foregroundStyle(.purple.gradient)
                            .font(.custom("CloudyPeachesDemo", size: 35))
                            .shadow(color: .white, radius: 20)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .fullScreenCover(isPresented: $showHome) {
                        // When showOrder is true, OrderView will appear full screen
                        ContentView()
                        
                    }
                    
                }
            }
        }
    }
}

#Preview {
    OrderView()
}
