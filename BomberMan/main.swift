//
//  main.swift
//  BomberMan
//
//  Created by slava bily on 19.11.2021.
//

import Foundation

func bomberMan(n: Int, grid: [String]) -> [String] {
    var fs = [[Character]]()
    for i in grid {
        fs.append(Array(i))
    }
    print(fs)
    var bombsBatch = [(Int, Int)]()
    for i in 0..<fs.count {
        for j in 0..<fs[i].count {
            if fs[i][j] == "O" {
                let pos = (i: i, j: j)
                bombsBatch.append(pos)
            }
        }
    }
    print(bombsBatch)
    var ss = [[Character]]()
    for i in fs {
        ss.append(Array(repeating: "O", count: i.count))
    }
    print(ss)
    return [""]
}

print(bomberMan(n: 3, grid: [".......", "...O...", "....O..", ".......", "OO.....", "OO....."]))

