(declare-const X String)
; /#([1-9]){2}([1-9]){2}([1-9]){2}/
(assert (str.in.re X (re.++ (str.to.re "/#") ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "/\x0a"))))
; ^[a-zA-Z]{1,3}\[([0-9]{1,3})\]
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "[") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "]\x0a")))))
; Host\x3A\s+\x2Ftoolbar\x2Fico\x2F\dencoderserverreport\<\x2Ftitle\>
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/") (re.range "0" "9") (str.to.re "encoderserverreport</title>\x0a")))))
; eveocczmthmmq\x2fomzl\d+Host\x3Aulmxct\x2fmqoyc
(assert (str.in.re X (re.++ (str.to.re "eveocczmthmmq/omzl") (re.+ (re.range "0" "9")) (str.to.re "Host:ulmxct/mqoyc\x0a"))))
(check-sat)
