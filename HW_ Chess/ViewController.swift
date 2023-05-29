//
//  ViewController.swift
//  HW_ Chess
//
//  Created by 曹家瑋 on 2023/5/28.
//


// 初期版
//import UIKit
//
//class ViewController: UIViewController {
//
//    // 西洋棋棋盤的 View，用來添加 棋盤格子(chessSquareImageView)
//    @IBOutlet weak var chessBoardView: UIView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//
//        // 計算每個棋盤格的大小（8 * 8)
//        let squareSize = chessBoardView.frame.width / 8
//
//        // 棋子的大小是棋盤格大小的 0.7 倍
//        let chessPieceSize = squareSize * 0.7
//
//        // 外層迴圈控制棋盤的行
//        for row in 0...7 {
//
//            // 內層迴圈控制棋盤每一行的每一列
//            for column in 0...7 {
//
//                // 依照當前的行和列數，計算出棋盤格的位置，創建一個具有該位置和大小的 UIImageView
//                let chessSquareImageView = UIImageView(frame: CGRect(x: squareSize * CGFloat(column), y: squareSize * CGFloat(row), width: squareSize, height: squareSize))
//
//                // 根據行、列數的和是 偶數 來決定棋盤格的背景色
//                if (row + column) % 2 == 0 {
//                    chessSquareImageView.backgroundColor = UIColor.white
//                } else {
//                    chessSquareImageView.backgroundColor = UIColor.black
//                }
//
//                // 將創建的棋盤格子 添加到 棋盤 View 上
//                chessBoardView.addSubview(chessSquareImageView)
//
//                // 判斷棋子的擺放位置 (黑色棋子）
//                if row == 1  {
//                    // 設定棋子的位置，讓它在對應的棋盤格中間
//                    let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
//                    let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
//
//                    // 創建一個新的 UIImageView 來表示棋子，並設定它的位置和大小
//                    let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
//
//                    // 將這個 ImageView 的圖像設定為 black_pawn 棋子的圖片
//                    pieceImageView.image = UIImage(named: "black_pawn")
//                    // 將這個棋子的 ImageView 添加到棋盤的 View 中
//                    chessBoardView.addSubview(pieceImageView)
//
//                } else if  row == 0, (column == 0 || column == 7) {
//                    // 設置棋子的ImageView的大小及位置
//                    let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
//                    let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
//
//                    let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
//
//                    pieceImageView.image = UIImage(named: "black_rook")
//                    chessBoardView.addSubview(pieceImageView)
//
//                } else if row == 0, (column == 1 || column == 6) {
//                    // 設置棋子的ImageView的大小及位置
//                    let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
//                    let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
//
//                    let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
//
//                    pieceImageView.image = UIImage(named: "black_knight")
//                    chessBoardView.addSubview(pieceImageView)
//
//                }  else if row == 0, (column == 2 || column == 5) {
//                    // 設置棋子的ImageView的大小及位置
//                    let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
//                    let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
//
//                    let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
//
//                    pieceImageView.image = UIImage(named: "black_bishop")
//                    chessBoardView.addSubview(pieceImageView)
//
//                } else if row == 0, column == 3 {
//                    // 設置棋子的ImageView的大小及位置
//                    let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
//                    let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
//
//                    let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
//
//                    pieceImageView.image = UIImage(named: "black_queen")
//                    chessBoardView.addSubview(pieceImageView)
//
//                } else if row == 0, column == 4 {
//                    // 設置棋子的ImageView的大小及位置
//                    let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
//                    let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
//
//                    let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
//
//                    pieceImageView.image = UIImage(named: "black_king")
//                    chessBoardView.addSubview(pieceImageView)
//                }
//
//                // 設置白色棋子
//                if row == 6 {
//                    // 設置棋子的ImageView的大小及位置
//                    let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
//                    let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
//
//                    let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
//
//                    pieceImageView.image = UIImage(named: "white_pawn")
//                    chessBoardView.addSubview(pieceImageView)
//
//                } else if row == 7, (column == 0 || column == 7) {
//                    // 設置棋子的ImageView的大小及位置
//                    let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
//                    let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
//
//                    let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
//
//                    pieceImageView.image = UIImage(named: "white_rook")
//                    chessBoardView.addSubview(pieceImageView)
//
//                } else if row == 7, (column == 1 || column == 6) {
//                    // 設置棋子的ImageView的大小及位置
//                    let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
//                    let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
//
//                    let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
//
//                    pieceImageView.image = UIImage(named: "white_knight")
//                    chessBoardView.addSubview(pieceImageView)
//
//                } else if row == 7, (column == 2 || column == 5) {
//                    // 設置棋子的ImageView的大小及位置
//                    let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
//                    let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
//
//                    let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
//
//                    pieceImageView.image = UIImage(named: "white_bishop")
//                    chessBoardView.addSubview(pieceImageView)
//
//                } else if row == 7, column == 3 {
//                    // 設置棋子的ImageView的大小及位置
//                    let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
//                    let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
//
//                    let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
//
//                    pieceImageView.image = UIImage(named: "white_queen")
//                    chessBoardView.addSubview(pieceImageView)
//
//                } else if row == 7, column == 4 {
//                    // 設置棋子的ImageView的大小及位置
//                    let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
//                    let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
//
//                    let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
//
//                    pieceImageView.image = UIImage(named: "white_king")
//                    chessBoardView.addSubview(pieceImageView)
//                }
//
//            }
//
//        }
//
//    }
//}



import UIKit

class ViewController: UIViewController {

    // 西洋棋棋盤的 View，用來添加 棋盤格子(chessSquareImageView)
    @IBOutlet weak var chessBoardView: UIView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 計算每個棋盤格的大小（8 * 8)
        let squareSize = chessBoardView.frame.width / 8
        
        // 棋子的大小是棋盤格大小的 0.7 倍
        let chessPieceSize = squareSize * 0.7
        
        // 使用struct建立每個棋子資訊
        let pieces = [
            ChessPiece(row: 1, columns: Array(0...7), image: "black_pawn"),  // 黑色的兵
            ChessPiece(row: 0, columns: [0, 7], image: "black_rook"),        // 黑色的城堡
            ChessPiece(row: 0, columns: [1, 6], image: "black_knight"),      // 黑色的騎士
            ChessPiece(row: 0, columns: [2, 5], image: "black_bishop"),      // 黑色的主教
            ChessPiece(row: 0, columns: [3], image: "black_queen"),          // 黑色的皇后
            ChessPiece(row: 0, columns: [4], image: "black_king"),           // 黑色的國王
            ChessPiece(row: 6, columns: Array(0...7), image: "white_pawn"),  // 白色的兵
            ChessPiece(row: 7, columns: [0, 7], image: "white_rook"),        // 白色的城堡
            ChessPiece(row: 7, columns: [1,6], image: "white_knight"),       // 白色的騎士
            ChessPiece(row: 7, columns: [2, 5], image: "white_bishop"),      // 白色的主教
            ChessPiece(row: 7, columns: [3], image: "white_queen"),          // 白色的皇后
            ChessPiece(row: 7, columns: [4], image: "white_king"),           // 白色的國王
        ]
        
        // 外層迴圈控制棋盤的行
        for row in 0...7 {
            
            // 內層迴圈控制棋盤每一行的每一列
            for column in 0...7 {
                
                // 依照當前的行和列數，計算出棋盤格的位置，創建一個具有該位置和大小的 UIImageView
                let chessSquareImageView = UIImageView(frame: CGRect(x: squareSize * CGFloat(column), y: squareSize * CGFloat(row), width: squareSize, height: squareSize))
            
                // 根據行、列數的和是 偶數 來決定棋盤格的背景色
                if (row + column) % 2 == 0 {
                    chessSquareImageView.backgroundColor = UIColor.white
                } else {
                    chessSquareImageView.backgroundColor = UIColor.black
                }
                
                // 將創建的棋盤格子 添加到 棋盤 View 上
                chessBoardView.addSubview(chessSquareImageView)
                
                // 放置棋子
                for piece in pieces {
                    
                    // 循環每個棋子
                    if row == piece.row, piece.columns.contains(column) {
        
                        // 當目前的行和列符合某個棋子的位置，則放置該棋子
                        addChessPiece(chessBoardView: chessBoardView, squareSize: squareSize, chessPieceSize: chessPieceSize, row: row, column: column, image: piece.image)
                        
                    }
                }
                
            }
            
        }
    
    }
    
    // addChessPiece 指定的位置添加棋子
    func addChessPiece(chessBoardView: UIView,squareSize: CGFloat, chessPieceSize: CGFloat, row:Int, column: Int, image: String ) {
        
        // 設定棋子的位置，讓它在對應的棋盤格中間
        let pieceX = squareSize * CGFloat(column) + (squareSize - chessPieceSize) / 2
        let pieceY = squareSize * CGFloat(row) + (squareSize - chessPieceSize) / 2
        
        // 創建一個新的 UIImageView 來表示棋子，並設定它的位置和大小
        let pieceImageView = UIImageView(frame: CGRect(x: pieceX, y: pieceY, width: chessPieceSize, height: chessPieceSize))
        
        // 將這個 ImageView 的圖像設定為 當前 棋子的圖片，名稱由參數 image 指定
        pieceImageView.image = UIImage(named: image)
        // 將這個棋子的 ImageView 添加到棋盤的 View 中
        chessBoardView.addSubview(pieceImageView)
        
    }
}
