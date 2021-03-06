//
//  Post.swift
//  Practice
//
//  Created by Sergio Ramos on 27.11.2021.
//

import Foundation

struct Post {
    let image, title, author, article: String
}

extension Post {
    static var sampleData: [Self] {
        let first = Post(image: "Audi", title: "Audi", author: "Август Хорьх", article: "Audi AG — немецкая автомобилестроительная компания в составе концерна Volkswagen Group, специализирующаяся на выпуске автомобилей под маркой Audi. Штаб-квартира расположена в городе Ингольштадт. Девиз — Vorsprung durch Technik. Объём производства в 2016 году составил около 1 903 259 автомобилей.")
        let second = Post(image: "Mersedes", title: "Mersedes", author: "Карл Бенц", article: "Mercedes-Benz — торговая марка и одноимённая компания — производитель легковых автомобилей премиального класса, грузовых автомобилей, автобусов и других транспортных средств, входящая в состав немецкого концерна «Daimler AG». Является одним из самых узнаваемых автомобильных брендов во всём мире. Штаб-квартира Mercedes-Benz находится в Штутгарте, Баден-Вюртемберг, Германия.")
        let third = Post(image: "bmw", title: "BMW", author: "Густав Отто", article: "BMW AG — немецкий производитель автомобилей, мотоциклов, двигателей, а также велосипедов. Председателем компании с 2006 по 2015 год был Норберт Райтхофер, с мая 2015 года — Харальд Крюгер, а с 18 июля 2019 года — Оливер Ципсе. Главный дизайнер — Йозеф Кабан. Девиз компании — «Freude am Fahren», с нем. — «С удовольствием за рулём».")
        let forth = Post(image: "volkswagen", title: "Volkswagen", author: "Германский трудовой фронт", article: "Volkswagen — немецкая автомобильная марка, одна из многих, принадлежащих концерну Volkswagen AG. Под этой маркой в 2019 году было реализовано 6 млн 620 тыс. автомобилей. Штаб-квартира — в Вольфсбурге. Там же находится и Автомузей Volkswagen.")
        return [first, second, third, forth]
    }
}
