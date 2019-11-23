//
//  Result.swift
//  PSI App
//
//  Created by Prateek on 23/11/19.
//  Copyright © 2019 Prateek. All rights reserved.
//

enum Result<D, E> where E: Error {
    case success(payload: D)
    case failure(E?)
}

enum EmptyResult<E> where E: Error {
    case success
    case failure(E?)
}
