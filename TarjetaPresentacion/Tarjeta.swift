import SwiftUI

struct Tarjeta: View {
    var body: some View {
        
        ZStack {
            Color.green
            VStack (alignment: .leading) {
                Text("Tarjetero")
                    .font(.largeTitle)
                    .padding(.horizontal, 30)
                Divider()
                CardBoard()
                }.padding(15)
            }
        }
    }


struct CardBoard : View {
    
    @State var expanded = true
    @State var Flipped = false
    @State var cardRotation = 0.0
    @State var contentRotation = 0.0
    var body: some View {
        RoundedRectangle(cornerRadius: 40, style: .continuous)
            .fill(Color.blue)
            .frame(width: 350, height: 250)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .overlay(
                VStack{
                    if Flipped == false {
                        Text("Hola")
                            .font(.title2)
                            .foregroundColor(.white)
                    }else {
                        Text("Que tal")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    
                })
            .multilineTextAlignment(.center)
            .scaledToFill()
            .frame(width: 300, height: 200)
            .rotation3DEffect(
                .degrees(contentRotation),
                axis: (x: 0.0, y: 1.0, z: 0.0))
            .onTapGesture {
                flipCard()
            }.rotation3DEffect(
                .degrees(cardRotation),
                axis: (x: 0.0, y: 1.0, z: 0.0))
            .padding(40)
    }
    
    func flipCard() {
        let animationTime = 0.5
        withAnimation(Animation.linear(duration: animationTime)){
            cardRotation += 180
        }
        withAnimation(Animation.linear(duration: 0.001).delay(animationTime / 2)) {
            contentRotation += 180
            Flipped.toggle()
        }
    }
}



struct Tarjeta_Previews: PreviewProvider {
    static var previews: some View {
        Tarjeta()
    }
}

