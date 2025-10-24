class Aparelho: Manutencao{
     internal let nomeItem: String
     internal var dataUltimaManutencao: String

     init(nomeItem: String){
        self.nomeItem = nomeItem
        self.dataUltimaManutencao = "Nenhuma"
     }
     func realizarManutencao() -> Bool{
        print("Manutenção do aparelho \(nomeItem) realizada!")
        dataUltimaManutencao = "30/08/2015"
        return true
     }
     
}