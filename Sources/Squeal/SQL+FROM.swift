//
//  SQL+FROM.swift
//  
//
//  Created by Sacha Durand Saint Omer on 26/03/2024.
//

import Foundation

extension SQLQuery {
    
    func FROM(_ tableName: String) -> SQLQuery {
        return BareSQLQuery(raw: raw + " " + "FROM \(tableName)")
    }
    
    func FROM(_ table: Table) -> SQLQuery {
        return BareSQLQuery(raw: raw + " " + "FROM \(table.tableName)")
    }
}

extension TypedSQLQuery {
    
    func FROM(_ tableName: String) -> TypedSQLQuery<T> {
        return TypedSQLQuery(schema: schema, raw: raw + " " + "FROM \(tableName)")
    }
    
    func FROM(_ table: Table) -> TypedSQLQuery<T> {
        return TypedSQLQuery(schema: schema, raw: raw + " " + "FROM \(table.tableName)")
    }
}


//extension SQLQuery {
//    
//    func FROM(_ table: Table.Type) -> SQLQuery {
//        return SQLQuery(schema: schema, raw: raw + " " + "FROM \(table.tableName)")
//    }
//    
////    func FROM(_ tableName: TableName) -> SQLQuery {
////        return SQLQuery(raw: self.raw + " " + "FROM \(tableName)")
////    }
////
////    func FROM(_ table: any Table.Type) -> SQLQuery {
////        return SQLQuery(raw: self.raw + " " + "FROM \(table.tableName)")
////    }
//}