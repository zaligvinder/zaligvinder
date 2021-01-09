(declare-const X String)
; action\x2EpioletHost\x3AIP-www\x2Einternetadvertisingcompany\x2Ebiz
(assert (not (str.in.re X (str.to.re "action.pioletHost:IP-www.internetadvertisingcompany.biz\x0a"))))
(check-sat)
