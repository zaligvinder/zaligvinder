(declare-const X String)
; \u{7D}\u{7B}Trojan\u{3A}backtrust\u{2E}comHost\u{3A}pjpoptwql\u{2f}rlnj
(assert (not (str.in_re X (str.to_re "}{Trojan:backtrust.comHost:pjpoptwql/rlnj\u{a}"))))
; ^\d{9}[\d|X]$
(assert (str.in_re X (re.++ ((_ re.loop 9 9) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to_re "|") (str.to_re "X")) (str.to_re "\u{a}"))))
(check-sat)
