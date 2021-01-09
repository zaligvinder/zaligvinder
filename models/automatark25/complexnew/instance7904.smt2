(declare-const X String)
; data\.warezclient\.comHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "data.warezclient.comHost:User-Agent:\x0a"))))
; ^([a-z|A-Z]{1}[0-9]{3})[-]([0-9]{3})[-]([0-9]{2})[-]([0-9]{3})[-]([0-9]{1})
(assert (not (str.in.re X (re.++ (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (re.range "a" "z") (str.to.re "|") (re.range "A" "Z"))) ((_ re.loop 3 3) (re.range "0" "9"))))))
; /\x2erjs([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.rjs") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; A-311www3\.addfreestats\.comAttachedX-Mailer\x3A
(assert (str.in.re X (str.to.re "A-311www3.addfreestats.comAttachedX-Mailer:\x13\x0a")))
; is\x7D\x7BPort\x3A\x7D\x7BUser\x3A
(assert (str.in.re X (str.to.re "is}{Port:}{User:\x0a")))
(check-sat)
