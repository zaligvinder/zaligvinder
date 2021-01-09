(declare-const X String)
; ^(.){0,20}$
(assert (not (str.in.re X (re.++ ((_ re.loop 0 20) re.allchar) (str.to.re "\x0a")))))
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "adblock.linkz.comUser-Agent:email\x0a"))))
; WindowsAcmeReferer\x3A
(assert (str.in.re X (str.to.re "WindowsAcmeReferer:\x0a")))
(check-sat)
