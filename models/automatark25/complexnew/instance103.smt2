(declare-const X String)
; ^(0)$|^([1-9][0-9]*)$
(assert (str.in.re X (re.union (str.to.re "0") (re.++ (str.to.re "\x0a") (re.range "1" "9") (re.* (re.range "0" "9"))))))
; EFError.*\x2Fcs\x2Fpop4\x2F[^\n\r]*
(assert (not (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "/cs/pop4/") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; User-Agent\x3AFiltered
(assert (str.in.re X (str.to.re "User-Agent:Filtered\x0a")))
; \x2FNFO\x2CRegistered.*Host\x3A\s+TPSystemHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "/NFO,Registered") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystemHost:\x0a")))))
(check-sat)
