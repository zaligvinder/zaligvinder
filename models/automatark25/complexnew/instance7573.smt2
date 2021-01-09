(declare-const X String)
; /filename=[^\n]*\x2ecpe/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cpe/i\x0a"))))
; (^\d{1,2}\.\d{1,2}\.\d{4})|(^\d{1,2}\.\d{1,2})|(^\d{1,2})$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "\x0a"))))))
; snprtz\x7Cdialno\s+3Awww\x2eurlblaze\x2enetulmxct\x2fmqoyc
(assert (not (str.in.re X (re.++ (str.to.re "snprtz|dialno") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "3Awww.urlblaze.netulmxct/mqoyc\x0a")))))
(check-sat)
