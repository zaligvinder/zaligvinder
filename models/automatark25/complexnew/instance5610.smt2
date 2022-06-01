(declare-const X String)
; www\u{2E}alfacleaner\u{2E}comHost\u{3a}Logs
(assert (str.in_re X (str.to_re "www.alfacleaner.comHost:Logs\u{a}")))
; /^\/\w{1,2}\/\w{1,3}\.class$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/") ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".class/U\u{a}"))))
(check-sat)
