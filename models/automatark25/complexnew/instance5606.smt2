(declare-const X String)
; /m.php\?do=(getvers|status|getcmd)/Ui
(assert (str.in.re X (re.++ (str.to.re "/m") re.allchar (str.to.re "php?do=") (re.union (str.to.re "getvers") (str.to.re "status") (str.to.re "getcmd")) (str.to.re "/Ui\x0a"))))
; www\x2Ealfacleaner\x2EcomHost\x3aLogs
(assert (not (str.in.re X (str.to.re "www.alfacleaner.comHost:Logs\x0a"))))
(check-sat)
