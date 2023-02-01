//
//  ContentView.swift
//  SwiftUI Test
//
//  Created by 김진경 on 2023/02/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        VStack{
            Spacer()
            //background modifier 사용하기 아래 그려짐
            Rectangle().fill(Color.green).frame(width:10, height: 10)
                .background(Rectangle().fill(Color.yellow).frame(width:80,height:80))
            
            Spacer()
            
            //overlay modifier 사용하기 위에 그려짐
             Rectangle().fill(Color.green).frame(width:150, height: 150)
             .overlay(Rectangle().fill(Color.yellow).frame(width:80,height:80))
            
            Spacer()
            
            Circle()
                .fill(Color.yellow.opacity(0.8))
                .frame(width: 300,height:300)
                .overlay(Text("JoyStick").font(.largeTitle))
                .overlay(Image(systemName: "arrow.up").font(.title).padding(),alignment: .top)
                .background(Image(systemName: "arrow.down").font(.title).padding(),alignment: .bottom)
                .overlay(Image(systemName: "arrow.left").font(.title).padding(),alignment: .leading)
                .background(Image(systemName: "arrow.right").font(.title).padding(),alignment: .trailing)
                .overlay(Image(systemName: "arrow.up.right.circle.fill").font(.title).padding(),alignment: .topTrailing)
                .border(Color.red)
            Spacer()
        }.padding()
        
        /*
        //ZStack에서 Spacer이용하면 다 가려짐
        ZStack{
            //따라서
            Color.clear//or Rectangle 부모뷰만큼 크기가 커짐
            Text("Spacer").font(.title).background(Color.yellow)
        }.background(Color.blue)//배경다 파란색으로 변함
        */
        
        /*
        HStack{
            Text("Spacer MinLength").font(.title).foregroundColor(.white)
            Spacer(minLength: 90)//Spacer높이
            Text("Spacer").font(.title).background(Color.yellow)
        }.background(Color.blue)
        */
        
        /*Spacer
        HStack{
            Spacer().frame(width: 90)
            //Spacer().background(Color.blue)//색표현해봤자안됨
            Text("Spacer").font(.title).background(Color.yellow)
        }.background(Color.blue)//여기서 Spacer색표현
        //Spacer().background(Color.blue)이거왜안되지 이제안되나
        */
        
        
        /*
        VStack (alignment: .leading){
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
            
            Text("SwiftUI")
                .padding()
                .font(.title)
                .bold()//오류나야하는데?
            
            Text("🐶🐱🐭")
                .font(.largeTitle)
                .background(Color.yellow)
                .padding()
            
            Text("🐶🐱🐭")
                .font(.largeTitle)
                .padding()
                .background(Color.yellow)
                
            HStack(spacing: 0){
                Image("SwiftUI")
                Image("SwiftUI").frame(width: 50, height: 50)
                Image("SwiftUI").frame(width: 200, height: 200)
            }

            HStack{
                Image("SwiftUI")
                Image("SwiftUI")
                    .resizable().frame(width: 50, height: 50)
                Image("SwiftUI")
                    .resizable().frame(width: 200, height: 200)
            }
            .border(Color.cyan)

            ZStack{
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
        
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 150, height: 150)
                    .offset(x: 40, y: 40)
            }
            .padding()
            .border(Color.cyan)
                
        }
        .padding()
         */
       
        
    }
         
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
