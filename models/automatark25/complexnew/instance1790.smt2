(declare-const X String)
; ^[a-zA-Z]\w{0,30}$
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 0 30) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
; action\u{2E}pioletHost\u{3A}IP-www\u{2E}internetadvertisingcompany\u{2E}biz
(assert (str.in_re X (str.to_re "action.pioletHost:IP-www.internetadvertisingcompany.biz\u{a}")))
; \.([A-Za-z0-9]{2,5}($|\b\?))
(assert (str.in_re X (re.++ (str.to_re ".\u{a}") ((_ re.loop 2 5) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "?"))))
(check-sat)
