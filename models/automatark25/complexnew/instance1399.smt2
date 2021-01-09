(declare-const X String)
; /[^ -~\r\n]{4}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a")))))
; ^(0)$|^([1-9][0-9]*)$
(assert (not (str.in.re X (re.union (str.to.re "0") (re.++ (str.to.re "\x0a") (re.range "1" "9") (re.* (re.range "0" "9")))))))
; (\/\/)(.+)(\/\/)
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ re.allchar) (str.to.re "//\x0a"))))
; e2give\.com.*Login\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "e2give.com") (re.* re.allchar) (str.to.re "Login") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b####User-Agent:\x0a")))))
(check-sat)
