(declare-const X String)
; /\x2ette([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.tte") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Address\x3A\s+SbAtsHTTP_RAT_Subject\x3A
(assert (str.in.re X (re.++ (str.to.re "Address:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SbAtsHTTP_RAT_Subject:\x0a"))))
; \x7D\x7BTrojan\x3AUser-Agent\x3AbyHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (str.in.re X (str.to.re "}{Trojan:User-Agent:byHost:\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1\x0a")))
(check-sat)
