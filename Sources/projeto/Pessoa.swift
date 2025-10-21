import Foundation

public class Pessoa {
    private(set) var nome: String
    private(set) var email: String

    init(nome: String, email: String){
        self.nome = nome
        self.email = email
    }

    func getDescricao() -> String {
        return "Nome:\(nome) Email: \(email)"
    }

}