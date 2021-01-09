(declare-const X String)
; stats\x2edrivecleaner\x2ecomExciteasdbiz\x2Ebiz
(assert (str.in.re X (str.to.re "stats.drivecleaner.com\x13Exciteasdbiz.biz\x0a")))
; /filename=[^\n]*\x2exwd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xwd/i\x0a"))))
; ^[A-Z0-9a-z'&()/]{0,1}[A-Z0-9a-z'&()/]{0,1}(([A-Z0-9a-z'&()/_-])|(\\s)){0,47}[A-Z0-9a-z'&()/]{1}$
(assert (str.in.re X (re.++ (re.opt (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) (re.opt (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) ((_ re.loop 0 47) (re.union (str.to.re "\x5cs") (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/") (str.to.re "_") (str.to.re "-"))) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) (str.to.re "\x0a"))))
(check-sat)
