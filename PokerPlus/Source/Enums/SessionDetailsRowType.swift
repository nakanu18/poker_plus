//
//  SessionDetailsRowType.swift
//  PokerPlus
//
//  Created by Alex de Vera on 7/17/16
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation

enum SessionDetailsRowType: Int
{
    case Date, GameType, TableType, Stakes, Profit, TotalBuyin, Expenses
    
    func cellIdentifier() -> String
    {
        switch self
        {
        case Date:          return "DetailsDateCell"
        case GameType:      return "DetailsGameTypeCell"
        case TableType:     return "DetailsTableTypeCell"
        case Stakes:        return "DetailsStakesCell"
        case Profit:        return "DetailsProfitCell"
        case TotalBuyin:    return "DetailsTotalBuyinCell"
        case Expenses:      return "DetailsExpensesCell"
        }
    }
    
    func title() -> String
    {
        switch self
        {
        case Date:          return "Date"
        case GameType:      return "Game Type"
        case TableType:     return "Table Type"
        case Stakes:        return "Stakes"
        case Profit:        return "Profit"
        case TotalBuyin:    return "TotalBuyin"
        case Expenses:      return "Expenses"
        }
    }
}
