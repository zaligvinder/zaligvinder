(declare-const X String)
; URLBlaze.*User-Agent\u{3A}.*mPOPUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "URLBlaze") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "mPOPUser-Agent:\u{a}")))))
; /^"|'+(.*)+"$|'$/
(assert (str.in_re X (re.union (str.to_re "/\u{22}") (re.++ (re.+ (str.to_re "'")) (re.+ (re.* re.allchar)) (str.to_re "\u{22}")) (str.to_re "'/\u{a}"))))
; ^.+@[^\.].*\.[a-z]{2,}$
(assert (str.in_re X (re.++ (re.+ re.allchar) (str.to_re "@") (re.comp (str.to_re ".")) (re.* re.allchar) (str.to_re ".\u{a}") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z")))))
(check-sat)
