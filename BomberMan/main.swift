//
//  main.swift
//  BomberMan
//
//  Created by slava bily on 19.11.2021.
//

import Foundation

func bomberMan(n: Int, grid: [String]) -> [String] {
    var ss = [[Character]]()
    for i in grid {
        let j = i.replacingOccurrences(of: ".", with: "b")
        ss.append(Array(j))
        print(Array(j))
    }
    print("\n")
    print(ss)
    print("\n")
    for i in 0..<ss.count {
        for j in 0..<ss[i].count {
            if ss[i][j] == "O" {
                ss[i][j] = "."
                if i > 0 && i < ss.count - 1 && j > 0 && j < ss[i].count - 1 {
                    ss[i - 1][j] = "."
                    ss[i + 1][j] = "."
                    ss[i][j + 1] = "."
                    ss[i][j - 1] = "."
                }
            }
        }
    }
    print("\n")
    print(ss)
    print("\n")
    for i in ss {
        print(i)
    }
    
    return [""]
}

print(bomberMan(n: 3, grid: [".......", "...O...", "....O..", ".......", "OO.....", "OO....."]))

