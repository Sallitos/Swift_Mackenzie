class Aula {
    let nome: String
    var instrutor: Instrutor

    init(nome: String, instrutor: Instrutor){
        self.nome = nome
        self.instrutor = instrutor
    }

    func getDescricao() -> String {
        return "Aula: \(nome) com o instrutor: \(instrutor.nome)"
    }
}