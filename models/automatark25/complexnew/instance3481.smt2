(declare-const X String)
; seqepagqfphv\x2fsfdX-Mailer\x3A
(assert (str.in.re X (str.to.re "seqepagqfphv/sfdX-Mailer:\x13\x0a")))
; /^router=.*?arg=[a-z\d\.]*[^a-z\d\.&]/iP
(assert (not (str.in.re X (re.++ (str.to.re "/router=") (re.* re.allchar) (str.to.re "arg=") (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "."))) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "&")) (str.to.re "/iP\x0a")))))
; /\/bin\.exe$/U
(assert (str.in.re X (str.to.re "//bin.exe/U\x0a")))
; ^([0-9]{2})?((\([0-9]{2})\)|[0-9]{2})?([0-9]{3}|[0-9]{4})(\-)?[0-9]{4}$
(assert (not (str.in.re X (re.++ (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (re.union (re.++ (str.to.re ")(") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; Toolbar\dcount\x2Eyok\x2EcomweatherHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.range "0" "9") (str.to.re "count.yok.comweatherHost:User-Agent:\x0a")))))
(check-sat)
