import Foundation

public class Aluno: Pessoa {
    private let matricula: String
    private var nivel: NivelAluno
    private(set) var plano: Plano

    init(nome: String, email: String, matricula: String, plano: Plano) {
        self.matricula = matricula
        self.nivel = .iniciante
        self.plano = plano
        super.init(nome: nome, email: email)
    }

    override func getDescricao () -> String{
        return "(\(super.getDescricao()) | Matricula: \(matricula) | Plano: \(plano.nome))"
    }

    func getMatricula() -> String{
        return self.matricula
    }
}