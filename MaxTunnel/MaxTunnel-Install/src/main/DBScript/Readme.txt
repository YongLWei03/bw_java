

一键导入数据库信息请执行：createDeltaDB.bat



定时备份数据库数据请执行：
	1. 新建windows计划任务
	2. 启动的程序文件：oraclebackup.bat   注：保存的dmp文件默认D:\Oracle\Backup文件夹下
	3. 需要恢复数据时，修改oracleReturn.bat中return的值为需要恢复的dmp文件全路径，保存后双击该批处理文件
			 
			 
			 
修改数据库的表结构请打开Table文件夹：

	1. 创建表请修改createTable.sql文件
	2. 修改表请修改updateTable.sql文件
	3. 删除表请修改deleteTable.sql文件
	4. 设置字段请修改updateColumn.sql文件
	5. 修改字段类型请修改columnType.sql文件
	最后请执行update.bat，并执行上个目录下的oraclebackup.bat文件，实时备份


