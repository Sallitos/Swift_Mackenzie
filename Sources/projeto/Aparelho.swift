class Aparelho: Manutencao{
     let nomeItem: String
     private(set) var dataUltimaManutencao: String
     
     init(nomeItem: String){
        self.nomeItem = nomeItem
        self.dataUltimaManutencao = "Nenhuma"
     }

     func realizarManutencao() -> Bool{
        print("Manuteção do aparelho \(nomeItem) feita.")
        dataUltimaManutencao = "30/08/2015"
        return true
     }
}