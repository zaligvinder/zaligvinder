(declare-const X String)
; TROJAN-Owner\x3AUser-Agent\x3a%3fTs2\x2F
(assert (not (str.in.re X (str.to.re "TROJAN-Owner:User-Agent:%3fTs2/\x0a"))))
; ^(\w+)s?\:\/\/(\w+)?(\.)?(\w+)?\.(\w+)$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re "s")) (str.to.re "://") (re.opt (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.opt (str.to.re ".")) (re.opt (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; emailFrom\x3AUser-Agent\x3AUser-Agent\x3Aselect\x2FGet
(assert (str.in.re X (str.to.re "emailFrom:User-Agent:User-Agent:select/Get\x0a")))
; /filename=[^\n]*\x2epfb/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfb/i\x0a")))))
; ^[+]\d{1,2}\(\d{2,3}\)\d{6,8}(\#\d{1,10})?$
(assert (not (str.in.re X (re.++ (str.to.re "+") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")") ((_ re.loop 6 8) (re.range "0" "9")) (re.opt (re.++ (str.to.re "#") ((_ re.loop 1 10) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
