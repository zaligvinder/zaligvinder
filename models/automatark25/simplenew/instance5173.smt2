(declare-const X String)
; Server\s+Basic\d+action\x2EpioletHost\x3AIP-www\x2Einternetadvertisingcompany\x2Ebiz
(assert (str.in.re X (re.++ (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Basic") (re.+ (re.range "0" "9")) (str.to.re "action.pioletHost:IP-www.internetadvertisingcompany.biz\x0a"))))
(check-sat)
