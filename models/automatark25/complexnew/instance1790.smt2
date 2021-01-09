(declare-const X String)
; ^[a-zA-Z]\w{0,30}$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 0 30) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; action\x2EpioletHost\x3AIP-www\x2Einternetadvertisingcompany\x2Ebiz
(assert (str.in.re X (str.to.re "action.pioletHost:IP-www.internetadvertisingcompany.biz\x0a")))
; \.([A-Za-z0-9]{2,5}($|\b\?))
(assert (str.in.re X (re.++ (str.to.re ".\x0a") ((_ re.loop 2 5) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "?"))))
(check-sat)
