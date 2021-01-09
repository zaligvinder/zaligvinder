(declare-const X String)
; /\/ZES\d+O\d+\.jsp\?[a-z0-9=\x2b\x2f]{20}/iU
(assert (str.in.re X (re.++ (str.to.re "//ZES") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iU\x0a"))))
; asdbiz\x2Ebiz\dATTENTION\x3Aemail
(assert (str.in.re X (re.++ (str.to.re "asdbiz.biz") (re.range "0" "9") (str.to.re "ATTENTION:email\x0a"))))
; Server\x3AWordTheHost\x3afrom
(assert (str.in.re X (str.to.re "Server:WordTheHost:from\x0a")))
; ([a-zA-Z0-9\_\-\.]+[a-zA-Z0-9\_\-\.]+[a-zA-Z0-9\_\-\.]+)+@([a-zA-z0-9][a-zA-z0-9][a-zA-z0-9]*)+(\.[a-zA-z0-9][a-zA-z0-9][a-zA-z0-9]*)(\.[a-zA-z0-9]+)*
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))))) (str.to.re "@") (re.+ (re.++ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))) (str.to.re "\x0a.") (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))))
(check-sat)
