//
//  DetailViewModel.swift
//  MVVM-Example
//
//  Created by MAC on 18.10.2022.
//

import Foundation

protocol DetailViewModelProtocol {
    var view: DetailScreenProtocol? { get set }
    func viewDidLoad()
}

class DetailViewModel {
    weak var view: DetailScreenProtocol?
}

extension DetailViewModel: DetailViewModelProtocol {
    func viewDidLoad() {
        view?.configureVC()
        view?.configurePosterImageView()
        view?.downloadPosterImage()
        view?.configureTitlelabel()
        view?.configureDatelabel()
        view?.configureOverviewlabel()
    }
}
