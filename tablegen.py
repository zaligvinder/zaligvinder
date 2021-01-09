import os
import ui
import latex.summ_table
import latex.summ_table_woorpje
import latex.summ_table_all
import latex.cactus
import markdown.summ_table
import storage
        
uii =  ui.SelectDB (os.path.dirname(os.path.realpath(__file__)))
ui.init (uii)
db = uii.db
trackinstance = storage.sqlitedb.TrackInstanceRepository (db)
track = storage.sqlitedb.TrackRepository(db,trackinstance)
results = storage.sqlitedb.ResultRepository (db,track,trackinstance)

finalui = ui.ConfigureTableGeneration (results,track)
ui.init (finalui)


print (finalui.groups,finalui.solvers,finalui.loc,finalui.tableStyle)

if finalui.tableStyle == "Markdown":
	table = markdown.summ_table.TableGenerator (results,track,finalui.solvers,finalui.groups)
elif finalui.tableStyle == "Cactus":
	table = latex.cactus.CactusGenerator (results,track,finalui.solvers,finalui.groups)
else:
	table = latex.summ_table_all.TableGenerator (results,track,finalui.solvers,finalui.groups)
	#table = latex.summ_table_woorpje.TableGenerator (results,track,finalui.solvers,finalui.groups)
with open(finalui.loc,'w') as f:
    table.generateTable (f)
