import Foundation

let academia:Academia = Academia(nome: "Academia POO 360", alunosMatriculados: [:], instrutoresContratados: [:], aparelhos: [], aulasDisponiveis: [])

let planomensal: PlanoMensal = PlanoMensal()
let planoanual: PlanoAnual = PlanoAnual()

let instrutor1: Instrutor = Instrutor(nome: "Felipe Santana", email: "felipe0421@gmail.com", especialidade: "Triceps")
let instrutor2: Instrutor = Instrutor(nome: "Bruno Wagner", email: "wagner32412@gmail.com", especialidade: "Abdutor")

academia.contratarInstrutor(instrutor1)
academia.contratarInstrutor(instrutor2)
print()

let aluno1 = academia.matricularAluno(nome: "Bubens Tanaka", email: "tanaka523@gmail.com", matricula: "1234", plano: planomensal)
let aluno2 = academia.matricularAluno(nome: "Aidia Riquelme", email: "lidgia453@hotmail.com", matricula: "1433", plano: planoanual)
print()

let aula1: AulaPersonal = AulaPersonal(nome: "Peito", instrutor: instrutor1, aluno: aluno1)
let aula2: AulaColetiva = AulaColetiva(nome: "Zumba", instrutor: instrutor2, capacidadeMaxima: 3)

academia.adicionarAula(aula1)
academia.adicionarAula(aula2)

print("Adicionando alunos à aula coletiva")

let aluno3: Aluno = academia.matricularAluno(nome: "Dose Magalhães", email: "rose9545@yahoo.com.br", matricula: "3134", plano: planomensal)
let aluno4: Aluno = academia.matricularAluno(nome: "Cernando Miguel", email: "fefe431@outlook.com.br", matricula: "6243", plano: planoanual)

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

if(aula2.inscrever(aluno: aluno3)){
    print("Aluno \(aluno1.nome) inscrito com sucesso em \(aluno3.nome)")
} else {
    print("ERRO: aluno \(aluno3.nome) não foi inscrito!")
}

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