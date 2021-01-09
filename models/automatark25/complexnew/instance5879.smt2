(declare-const X String)
; URLBlaze.*User-Agent\x3A.*mPOPUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "URLBlaze") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "mPOPUser-Agent:\x0a")))))
; /^"|'+(.*)+"$|'$/
(assert (str.in.re X (re.union (str.to.re "/\x22") (re.++ (re.+ (str.to.re "'")) (re.+ (re.* re.allchar)) (str.to.re "\x22")) (str.to.re "'/\x0a"))))
; ^.+@[^\.].*\.[a-z]{2,}$
(assert (str.in.re X (re.++ (re.+ re.allchar) (str.to.re "@") (re.comp (str.to.re ".")) (re.* re.allchar) (str.to.re ".\x0a") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z")))))
(check-sat)
