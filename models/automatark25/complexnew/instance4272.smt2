(declare-const X String)
; ^([1-9]|[1-9]\d|[1-2]\d{2}|3[0-6][0-6])$
(assert (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "3") (re.range "0" "6") (re.range "0" "6"))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}rt/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rt/i\u{a}"))))
; \u{7D}\u{7B}Trojan\u{3A}backtrust\u{2E}comHost\u{3A}pjpoptwql\u{2f}rlnj
(assert (str.in_re X (str.to_re "}{Trojan:backtrust.comHost:pjpoptwql/rlnj\u{a}")))
; /filename=[^\n]*\u{2e}fli/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".fli/i\u{a}")))))
; TPSystemHost\u{3A}Host\u{3a}show\u{2E}roogoo\u{2E}comX-Mailer\u{3A}
(assert (not (str.in_re X (str.to_re "TPSystemHost:Host:show.roogoo.comX-Mailer:\u{13}\u{a}"))))
(check-sat)
