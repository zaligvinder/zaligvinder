(declare-const X String)
; www\x2Ealfacleaner\x2EcomHost\x3aLogs
(assert (not (str.in.re X (str.to.re "www.alfacleaner.comHost:Logs\x0a"))))
; ^(\d*\s*\-?\s*\d*)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.range "0" "9"))))))
; /^\/\d\x2eexe/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.range "0" "9") (str.to.re ".exe/Ui\x0a")))))
(check-sat)
