class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno] = [:]
    private var capacidadeMaxima: Int

    override init(nome: String, instrutor: Instrutor){
        self.capacidadeMaxima = 25
        super.init(nome: nome, instrutor: instrutor)
    }

    init(nome: String, instrutor: Instrutor, capacidadeMaxima: Int){
        if(capacidadeMaxima > 0){
            self.capacidadeMaxima = capacidadeMaxima
        } else {
            self.capacidadeMaxima = 25
        }
        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno: Aluno) -> Bool{
        if(alunosInscritos.count < capacidadeMaxima && alunosInscritos[aluno.getMatricula()] ==  nil){
            alunosInscritos[aluno.getMatricula()] = aluno
            return true
        }
        return false
    }

    override func getDescricao() -> String {
    
        return "\(super.getDescricao()) \n Número de vagas: \(alunosInscritos.count)/Máximo de Vagas: \(capacidadeMaxima))"
    }
}