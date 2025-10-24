import Foundation

let academia: Academia = Academia(nome: "Academia POO 360", alunosMatriculados: [:], instrutoresContratados: [:], aparelhos: [], aulasDisponiveis: [])

let planomensal: PlanoMensal = PlanoMensal()
let planoanual: PlanoAnual = PlanoAnual()

let instrutor1: Instrutor = Instrutor(nome: "Breno Correia Almeida", email: "breno1234@gmail.com", especialidade: "Perna")
let instrutor2: Instrutor = Instrutor(nome: "Gabrielly Rocha", email: "gabrielly1234@gmail.com", especialidade: "Peito")

academia.contratarInstrutor(instrutor1)
academia.contratarInstrutor(instrutor2)
print()

let aluno1 = academia.matricularAluno(nome: "Luiz Martins", email: "luiz1234@gmail.com", matricula: "0001", plano: planomensal)
let aluno2 = academia.matricularAluno(nome: "Tânia Dias", email: "tania1234@gmail.com", matricula: "0002", plano: planoanual)
print()

let aula1: AulaPersonal = AulaPersonal(nome: "Perna", instrutor: instrutor1, aluno: aluno1)
let aula2: AulaColetiva = AulaColetiva(nome: "Peito", instrutor: instrutor2, capacidadeMaxima: 3)

academia.adicionarAula(aula1)
academia.adicionarAula(aula2)

print("Adicionando alunos à aula coletiva")


if(aula2.inscrever(aluno: aluno1)){
    print("Aluno \(aluno1.nome) inscrito com sucesso em \(aluno1.nome)")
} else {
    print("ERRO: aluno \(aluno1.nome) não foi inscrito!")
}

if(aula2.inscrever(aluno: aluno2)){
    print("Aluno \(aluno2.nome) inscrito com sucesso em \(aluno2.nome)")
} else {
    print("ERRO: aluno \(aluno2.nome) não foi inscrito!")
}

let aluno3: Aluno = academia.matricularAluno(nome: "Lucas Cardoso", email: "lucas@gmail.com", matricula: "0003", plano: planomensal)
if(aula2.inscrever(aluno: aluno3)){
    print("Aluno \(aluno1.nome) inscrito com sucesso em \(aluno3.nome)")
} else {
    print("ERRO: aluno \(aluno3.nome) não foi inscrito!")
}

let aluno4: Aluno = academia.matricularAluno(nome: "Gustavo Correia", email: "gustavo@gmail.com", matricula: "0004", plano: planoanual)

if(aula2.inscrever(aluno: aluno4)){
    print("Aluno \(aluno4.nome) inscrito com sucesso em \(aluno4.nome)")
} else {
    print("ERRO: aluno \(aluno4.nome) não foi inscrito!")
}

print()

academia.listarAlunos()
print()
academia.listarAulas()
print("\n")


var aulasLista: [Aula] = [aula1, aula2] 
for teste in aulasLista{
    print(teste.getDescricao(),"\n")
}

var pessoasLista: [Pessoa] = [aluno1, aluno2, instrutor1, instrutor2]
for teste in pessoasLista{
    print(teste.getDescricao())
    }
