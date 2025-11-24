//
//  ContentView.swift
//  FoodToGo
//
//  Created by Jayda Fountain on 6/25/25.
//

import SwiftUI
import AVFoundation

var HomeMusic: AVAudioPlayer?

func loadAndPlayMusic() {
    if let url = Bundle.main.url(forResource: "007 - Board Game (Sunny 1)", withExtension: "mp3") {
            //print("Found local bundle URL: \(url.absoluteString)")
            do {
                HomeMusic = try AVAudioPlayer(contentsOf: url)
                HomeMusic?.prepareToPlay()
                HomeMusic?.play()
                //print("Music playing from bundle!")
            } catch {
                print("Error playing from bundle: \(error.localizedDescription)")
            }
        } else {
            print("Error: Music file '007 - Board Game (Sunny 1).mp3' not found in app bundle.")
        }
    
}

func playMusicEffect() {
    if let url = Bundle.main.url(forResource: "old-radio-button-click-97549", withExtension: "mp3") {
            //print("Found local bundle URL: \(url.absoluteString)")
            do {
                HomeMusic = try AVAudioPlayer(contentsOf: url)
                HomeMusic?.prepareToPlay()
                HomeMusic?.play()
                //print("Music playing from bundle!")
            } catch {
                print("Error playing from bundle: \(error.localizedDescription)")
            }
        } else {
            print("Error: Music file 'old-radio-button-click-97549.mp3' not found in app bundle.")
        }
    
}

struct ContentView: View {
    //@State var showHome = true
    @State var showOrder = false
    @State var isPlay = true
    
    var body: some View {
         
        NavigationStack() {
            ZStack {
                //Color.brown
                Image(.pinkPlaid)
                    .resizable()
                //.aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .frame(width: 1000, height: 1000)
                    //.ignoresSafeArea()
                VStack{
                    if isPlay {
                        //loadAndPlayMusic()
                        Button("Stop", systemImage: "music.note"){
                            isPlay.toggle()
                        }
                            .onAppear {
                                loadAndPlayMusic()
                            }
                            .onDisappear {
                                //Stop music when the view disappears
                                HomeMusic?.stop()
                                HomeMusic = nil // Release the player
                                playMusicEffect()
                            }
                            .foregroundColor(.pastelYellow)
                            .background(Color.green)
                            .cornerRadius(5)
                            .font(.custom("CloudyPeachesDemo", size: 15))
                            //.toggleStyle(.button)
                            .accentColor(.purple)
                            .frame(width: 200, height: 500) // Adjust the frame size
                            .scaleEffect(2.0) // Increase the size
                            .offset(x: 250, y:-115) // Adjust the position
                            .padding(-250)
                    } else {
                        Button("Play", systemImage: "music.note"){isPlay.toggle()}
                            .onAppear(){
                                playMusicEffect()
                            }
                            .foregroundColor(.pastelYellow)
                            .background(Color.pink)
                            .cornerRadius(5)
                            .font(.custom("CloudyPeachesDemo", size: 15))
                            //.toggleStyle(.button)
                            .accentColor(.purple)
                            .frame(width: 200, height: 500) // Adjust the frame size
                            .scaleEffect(2.0) // Increase the size
                            .offset(x: 250, y:-115) // Adjust the position
                            .padding(-250)
                    }
                    
                    
                    
                    Text("Jayda's Food To Go!")
                        .font(.custom("CloudyPeachesDemo", size: 50, relativeTo: .body))
                    //.padding(20)
                        .foregroundStyle(.red.gradient)
                        .kerning(4)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 200)
                        .background(RoundedRectangle(cornerRadius: 200).fill(.orange))
                    
                    Button("Order") {
                        showOrder.toggle()
                        //showHome.toggle()
                    }
                    .padding(20)
                    .frame(width: 250)
                    .foregroundStyle(.pastelYellow)
                    .background(RoundedRectangle(cornerRadius: 200).fill(.yellow))
                    .foregroundColor(.black)
                    .font(.custom("CloudyPeachesDemo", size: 20))
                    
                    NavigationLink(destination: OrderView()) {
                        if(showOrder){
                            OrderView()
                        }
                        
                    }
                    
                    
                    
                    Button("Volunteer") {
                    }
                    .padding(20)
                    .frame(width: 300)
                    .foregroundStyle(.pastelGreen)
                    .background(RoundedRectangle(cornerRadius: 200).fill(.green))
                    .foregroundColor(.black)
                    .font(.custom("CloudyPeachesDemo", size: 20))
                    
                    
                    Button("Visit Restroom") {
                    }
                    .padding(20)
                    .frame(width: 250)
                    .foregroundStyle(.pastelPink.gradient)
                    .background(RoundedRectangle(cornerRadius: 200).fill(.pink))
                    .foregroundColor(.black)
                    .font(.custom("CloudyPeachesDemo", size: 20))
                    
                    
                    Button("Leave") {
                    }
                    .padding(20)
                    .frame(width: 280, height: 70)
                    .foregroundStyle(.pastelOrange)
                    .background(RoundedRectangle(cornerRadius: 200).fill(.orange))
                    .foregroundColor(.black)
                    .font(.custom("CloudyPeachesDemo", size: 20))
                    
                    
                    
                }
            }
            .fullScreenCover(isPresented: $showOrder) {
                // When showOrder is true, OrderView will appear full screen
                OrderView()
                    .onAppear(){
                        //Stop music when the view disappears
                        HomeMusic?.stop()
                        HomeMusic = nil // Release the player
                    }
                
                
            }
            
        }
    }
    
}


#Preview {
    
    ContentView()
 
 }

