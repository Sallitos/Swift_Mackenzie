//Felipe Nogueira Salles
//Caio Galante Lopez

import Foundation

func listaTarefa(lista:[String]){
 for i in 0..<lista.count{
     print("Tarefa \(i) é: \(lista[i])")
 }
}

func adicionaTarefa(lista:[String], add: String)->[String]{
    var l = lista
    l.append(add)
    return (l)
}

func removeTarefa(lista: [String], numero: Int)->[String]{
    var l = lista
    l.remove(at:numero)
    return(l)
}

func editaTarefa(lista:[String], numero: Int, texto: String)->[String]{
    var l = lista
    l[numero] = texto
    return (l)
}

//Main 
var listaGlobal: [String] = []
while true{
    print("\n====Funçoes disponiveis====\n 1 - Listar tarefas existentes \n 2 - Adicionar tarefa a lista \n 3 - Remover tarefa da lista\n 4 - Editar um item da lista\n 0 - Sair do progama \n\nQual função o usario deseja ultilizar:")
    let textoOpcao = readLine()
    guard let numeroOpcao = textoOpcao, "" != textoOpcao else {
        print("Não é valido")
        continue
    }
    guard let nOpcao = Int(numeroOpcao) else{
        print("Não é valido")
        continue
    }
    switch nOpcao{
        case 0:
            print("Programa finalizado")
            exit(0)
        case 1:
            print("\nLista de tarefas:")
            listaTarefa(lista: listaGlobal)
        case 2:
            print("O que o usuário deseja adicionar")
            let textoLista = readLine()
            guard let addTexto = textoLista, "" != textoLista else {
                print("Nenhuma terefa adicionada, tente novamente")
                continue
            }
            listaGlobal = adicionaTarefa(lista: listaGlobal, add: addTexto)
        case 3:
            print("Qual tarefa o usuário deseja remover, considere que as terefas começam no 0:")
            let numero = readLine()
            guard let tirarTexto = numero, "" != numero else {
                print("Não é válido")
                continue
             }
            guard let n = Int(tirarTexto) else{
                print("Não é válido")
                continue
            }
           
            if n < listaGlobal.count && n > 0{
            listaGlobal = removeTarefa(lista: listaGlobal, numero: n)
            }
            else {
                print("Numero da tarefa não existe")
            }
        case 4:
            print("Qual tarefa o usuário deseja editar, considere que as terefas começam no 0:")
            let numero = readLine()
            guard let numero2 = numero, "" != numero else {
                print("Não é válido")
            	continue
            	}
            guard let n = Int(numero2) else{
                print("Não é válido")
            	continue
            }
            if n < listaGlobal.count && n > 0{
            print("Qual o texto que deve substituir o atual")
            let textoLista = readLine()
            guard let mudaTexto = textoLista, "" != textoLista else {
                print("Texto Vazio")
            	continue
            }
            listaGlobal = editaTarefa(lista: listaGlobal,numero: n, texto: mudaTexto)
            }
            else{
            print("Não é válido")
            continue
            }
        default:
            print("Não é uma opção valida")
    }
}