(declare-const X String)
; /filename=[^\n]*\u{2e}dae/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dae/i\u{a}")))))
; User-Agent\u{3A}\d+Desktop\sIDENTIFY666User-Agent\u{3A}\u{5B}Static
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Desktop") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "IDENTIFY666User-Agent:[Static\u{a}"))))
; areHost\u{3A}e2give\.comHost\u{3a}X-Mailer\u{3A}sportsHost\u{3A}Toolbar
(assert (str.in_re X (str.to_re "areHost:e2give.comHost:X-Mailer:\u{13}sportsHost:Toolbar\u{a}")))
; t=ProtoUser-Agent\u{3A}quick\u{2E}qsrch\u{2E}com
(assert (str.in_re X (str.to_re "t=ProtoUser-Agent:quick.qsrch.com\u{a}")))
; (a|A)
(assert (str.in_re X (re.++ (re.union (str.to_re "a") (str.to_re "A")) (str.to_re "\u{a}"))))
(check-sat)
