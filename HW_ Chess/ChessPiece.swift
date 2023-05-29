//
//  ChessPiece.swift
//  HW_ Chess
//
//  Created by 曹家瑋 on 2023/5/29.
//

import Foundation

// 建立棋子的struct
struct ChessPiece {
    
    var row: Int                // 棋子在棋盤上的行位置。
    var columns: [Int]          // 棋盤上的列位置，但有些棋子會有兩個位置。
    var image: String           // 棋子的圖片的名稱。
}
