(declare-const X String)
; ^[0-9]{1,}(,[0-9]+){0,}$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; snprtz\x7Cdialno\s+3Awww\x2eurlblaze\x2enetulmxct\x2fmqoyc
(assert (str.in.re X (re.++ (str.to.re "snprtz|dialno") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "3Awww.urlblaze.netulmxct/mqoyc\x0a"))))
(check-sat)
