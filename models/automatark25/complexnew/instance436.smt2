(declare-const X String)
; twfofrfzlugq\u{2f}eve\.qd\d+
(assert (not (str.in_re X (re.++ (str.to_re "twfofrfzlugq/eve.qd") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; \u{7D}\u{7B}Trojan\u{3A}Subject\u{3A}version
(assert (str.in_re X (str.to_re "}{Trojan:Subject:version\u{a}")))
; ^\d+\/?\d*$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re "/")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
