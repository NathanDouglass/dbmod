require './AccessDB.rb'
require './ExcelDB.rb'
require 'win32ole'

require './excel_row'
require './DBmod'

database1 = 'C:\Ruby\DatabaseRuby\Test Documents\dbHW_Tracking.mdb'
database2 = 'C:\Ruby\DatabaseRuby\Test Documents\ITSM Deployment Tracking test 9-11.xls'

excelworkpage = "[Sheet1$]"
accessworkpage = "tblMasterList"

########

time = Time.new

accessdb = AccessDB.new(database1)
accessdb.open

exceldb = ExcelDB.new(database2)
exceldb.open

DBmod.new(accessdb, exceldb, accessworkpage, excelworkpage).run
