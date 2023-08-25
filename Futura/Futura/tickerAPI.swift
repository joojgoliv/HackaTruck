import Foundation

class tickerAPI : ObservableObject {
    
    @Published var recebidos : [Result] = []
        
    func fetch(tick : String) {
        var ticker : String = ""
        let txtAppend = (tick).addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        ticker = String("https://brapi.dev/api/quote/\(txtAppend!)")
        
        print(ticker)
        
         let url = URL(string: ticker)
        
        let task = URLSession.shared.dataTask(with: url!) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                print("Erro na requisição:", error ?? "Erro desconhecido")
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode(Recebido.self, from: data)
                
                DispatchQueue.main.async {
                    print("Dados obtidos com sucesso:", parsed)
                    
                    self?.recebidos = parsed.results!
                }
            } catch {
                print("Erro ao decodificar JSON:", error)
            }
        }
        
        task.resume()
    }
}
