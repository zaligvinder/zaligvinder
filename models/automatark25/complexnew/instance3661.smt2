(declare-const X String)
; Host\u{3A}\s+ulmxct\u{2f}mqoycWinSession\u{2F}client\u{2F}\u{2A}PORT1\u{2A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ulmxct/mqoycWinSession/client/*PORT1*\u{a}"))))
; \u{2F}ta\u{2F}NEWS\u{2F}password\u{3B}1\u{3B}Optix
(assert (not (str.in_re X (str.to_re "/ta/NEWS/password;1;Optix\u{a}"))))
; ^([1-9]|(0|1|2)[0-9]|30)(/|-)([1-9]|1[0-2]|0[1-9])(/|-)(14[0-9]{2})$
(assert (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re "/") (str.to_re "-")) (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2")) (re.++ (str.to_re "0") (re.range "1" "9"))) (re.union (str.to_re "/") (str.to_re "-")) (str.to_re "\u{a}14") ((_ re.loop 2 2) (re.range "0" "9")))))
(check-sat)
