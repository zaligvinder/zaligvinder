(declare-const X String)
; ProAgentHost\u{3A}LOGSeconds\-
(assert (str.in_re X (str.to_re "ProAgentHost:LOGSeconds-\u{a}")))
; ^\d{5}$|^\d{5}-\d{4}$
(assert (str.in_re X (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; clvompycem\u{2f}cen\.vcnHost\u{3A}User-Agent\u{3A}\u{d}\u{a}
(assert (not (str.in_re X (str.to_re "clvompycem/cen.vcnHost:User-Agent:\u{d}\u{a}\u{a}"))))
(check-sat)
