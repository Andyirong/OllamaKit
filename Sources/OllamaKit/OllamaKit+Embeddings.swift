//
//  OllamaKit+Embeddings.swift
//
//
//  Created by Paul Thrasher on 02/09/24.
//

import Alamofire
import Combine
import Foundation

extension OllamaKit {
    /// Asynchronously generates embeddings from a specific model from the Ollama API.
    ///
    /// This method accepts ``OKEmbeddingsRequestData`` and returns an ``OKEmbeddingsResponse`` containing embeddings from the requested model.
    ///
    /// ```swift
    /// let ollamaKit = OllamaKit()
    /// let requestData = OKEmbeddingsRequestData(/* parameters */)
    /// let embeddings = try await ollamaKit.embeddings(data: requestData)
    /// ```
    ///
    /// - Parameter data: The ``OKEmbeddingsRequestData`` used to query the API for generating specific model embeddings.
    /// - Returns: An ``OKEmbeddingsResponse`` containing the embeddings from the model.
    /// - Throws: An error if the request fails or the response can't be decoded.
    public func embeddings(data: OKEmbeddingsRequestData) async throws -> OKEmbeddingsResponse {
        let request = AF.request(router.embeddings(data: data)).validate()
        let response = request.serializingDecodable(OKEmbeddingsResponse.self, decoder: decoder)
        let value = try await response.value
        
        return value
    }
    
    /// Retrieves embeddings from a specific model from the Ollama API as a Combine publisher.
    ///
    /// This method provides a reactive approach to generate embeddings. It accepts ``OKEmbeddingsRequestData`` and returns a Combine publisher that emits an ``OKEmbeddingsResponse`` upon successful retrieval.
    ///
    /// ```swift
    /// let ollamaKit = OllamaKit()
    /// let requestData = OKEmbeddingsRequestData(/* parameters */)
    ///
    /// ollamaKit.embeddings(data: requestData)
    ///     .sink(receiveCompletion: { completion in
    ///         // Handle completion
    ///     }, receiveValue: { response in
    ///         // Handle the received embeddings response
    ///     })
    ///     .store(in: &cancellables)
    /// ```
    ///
    /// - Parameter data: The ``OKEmbeddingsRequestData`` used to query the API for embeddings from a specific model.
    /// - Returns: A `AnyPublisher<OKEmbeddingsResponse, AFError>` that emits embeddings.
    public func embeddings(data: OKEmbeddingsRequestData) -> AnyPublisher<OKEmbeddingsResponse, AFError> {
        let request = AF.request(router.embeddings(data: data)).validate()
        
        return request
            .publishDecodable(type: OKEmbeddingsResponse.self, decoder: decoder).value()
            .eraseToAnyPublisher()
    }
}
