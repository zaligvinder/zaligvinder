(declare-const X String)
; www\x2Ealfacleaner\x2EcomHost\x3aLogs
(assert (not (str.in.re X (str.to.re "www.alfacleaner.comHost:Logs\x0a"))))
(check-sat)
