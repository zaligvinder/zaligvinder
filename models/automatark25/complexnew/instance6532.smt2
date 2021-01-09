(declare-const X String)
; /^[^\x00][^\x00\x01]+$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.comp (str.to.re "\x00")) (re.+ (re.union (str.to.re "\x00") (str.to.re "\x01"))) (str.to.re "/\x0a")))))
; urn:[a-z0-9]{1}[a-z0-9\-]{1,31}:[a-z0-9_,:=@;!'%/#\(\)\+\-\.\$\*\?]+
(assert (str.in.re X (re.++ (str.to.re "urn:") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 1 31) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ":") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ",") (str.to.re ":") (str.to.re "=") (str.to.re "@") (str.to.re ";") (str.to.re "!") (str.to.re "'") (str.to.re "%") (str.to.re "/") (str.to.re "#") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re ".") (str.to.re "$") (str.to.re "*") (str.to.re "?"))) (str.to.re "\x0a"))))
; Toolbarwww\x2Eonlinecasinoextra\x2Ecom
(assert (str.in.re X (str.to.re "Toolbarwww.onlinecasinoextra.com\x0a")))
; Host\x3A\d+Litequick\x2Eqsrch\x2EcomaboutHost\x3AComputer\x7D\x7BSysuptime\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Litequick.qsrch.comaboutHost:Computer}{Sysuptime:\x0a"))))
(check-sat)
