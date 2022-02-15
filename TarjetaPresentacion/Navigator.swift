import SwiftUI

struct Navigator: View {
    var body: some View {
        TabView {
            Formulario()
                .tabItem {
                    Image(systemName: "pencil.and.ellipsis.rectangle")
                    Text ("Formulario") }
            Tarjeta()
                .tabItem {
                    Image(systemName: "person.crop.rectangle")
                    Text ("Tarjeta") }
        }
    }
}

struct Navigator_Previews: PreviewProvider {
    static var previews: some View {
        Navigator()
    }
}
