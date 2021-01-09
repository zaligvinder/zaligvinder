(declare-const X String)
; www\x2Ealfacleaner\x2EcomHost\x3aLogs
(assert (str.in.re X (str.to.re "www.alfacleaner.comHost:Logs\x0a")))
; /^\/\w{1,2}\/\w{1,3}\.class$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/") ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".class/U\x0a"))))
(check-sat)
