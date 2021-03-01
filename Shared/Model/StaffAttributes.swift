//
//  StaffAttributes.swift
//  HospitalStaffs
//
//  Created by jk on 2021/2/28.
//

import Foundation


protocol StaffAttributes {
    //var id: UUID { get }
    var 法定每年工作日: Float16 {get set}
    var 法定每月工作日: Float16 {get set}
    var 每天应出勤小时: Float16 {get set}
    var 每年人均应休假小时数: Float16 {get set}
    var 每年人均其他非工作小时数: Float16 {get set}
    var 每年实际出勤总工时: Float16 { get }
    var 每年应出勤总工时: Float16 { get }
    var 每年预估人均休假小时: Float16 {get}
    var 每月法定工作分钟 : Float16 {get}
    
}

extension StaffAttributes {
    var 每年实际出勤总工时: Float16 {
        每年应出勤总工时 - 每年预估人均休假小时
    }
    var 每年应出勤总工时: Float16 {
        法定每年工作日 * 每天应出勤小时
    }
    var 每年预估人均休假小时: Float16 {
        每年人均应休假小时数 + 每年人均其他非工作小时数
    }
    var 每月法定工作分钟 : Float16 {
        法定每月工作日 * 每天应出勤小时 * 60
    }
}


struct NurseAttributes: StaffAttributes {
    var 法定每月工作日: Float16 = 22
    
    var 法定每年工作日: Float16 = 250
    
    var 每天应出勤小时: Float16 = 7.5
    
    var 每年人均应休假小时数: Float16 = 80
    
    var 每年人均其他非工作小时数: Float16 = 60
    
    
}

