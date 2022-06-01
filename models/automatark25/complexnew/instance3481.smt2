(declare-const X String)
; seqepagqfphv\u{2f}sfdX-Mailer\u{3A}
(assert (str.in_re X (str.to_re "seqepagqfphv/sfdX-Mailer:\u{13}\u{a}")))
; /^router=.*?arg=[a-z\d\.]*[^a-z\d\.&]/iP
(assert (not (str.in_re X (re.++ (str.to_re "/router=") (re.* re.allchar) (str.to_re "arg=") (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "."))) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "&")) (str.to_re "/iP\u{a}")))))
; /\/bin\.exe$/U
(assert (str.in_re X (str.to_re "//bin.exe/U\u{a}")))
; ^([0-9]{2})?((\([0-9]{2})\)|[0-9]{2})?([0-9]{3}|[0-9]{4})(\-)?[0-9]{4}$
(assert (not (str.in_re X (re.++ (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (re.union (re.++ (str.to_re ")(") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; Toolbar\dcount\u{2E}yok\u{2E}comweatherHost\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.range "0" "9") (str.to_re "count.yok.comweatherHost:User-Agent:\u{a}")))))
(check-sat)
