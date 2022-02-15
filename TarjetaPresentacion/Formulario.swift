import SwiftUI

/*class UserInfo: ObservableObject {
    @Published var name: String = ""
    @Published var surname: String = ""
    @Published var job: String = ""
    @Published var telephone: String = ""
    @Published var mail: String = ""
    @Published var direction: String = ""
}*/

struct Formulario: View {
    /*@EnvironmentObject var userInfo: UserInfo*/
    @State var name = ""
    @State var surname = ""
    @State var job = ""
    @State var telephone = ""
    @State var mail = ""
    @State var direction = ""
    var body: some View {
        Form{
            TextField("Nombre", text: $name)
            TextField("Apellidos", text: $surname)
            TextField("Puesto de Trabajo", text: $job)
            Divider()
            TextField("Telefono", text: $telephone)
            TextField("Email", text: $mail)
            TextField("Direccion", text: $direction)

        }
    }
}

struct Formulario_Previews: PreviewProvider {
    static var previews: some View {
        Formulario()
    }
}
