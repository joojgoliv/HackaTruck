import Foundation

class funcAPI : ObservableObject {
    @Published var test : [Index] = []
    @Published var test2 : [Stock] = []
        
    func fetch() {
        guard let url = URL(string: "https://brapi.dev/api/quote/list") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                print("Erro na requisição:", error ?? "Erro desconhecido")
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode(List.self, from: data)
                
                DispatchQueue.main.async {
                    print("Dados obtidos com sucesso:", parsed)
                    
                    self?.test2 = parsed.stocks
                    self?.test = parsed.indexes
                }
            } catch {
                print("Erro ao decodificar JSON:", error)
            }
        }
        
        task.resume()
    }
}
