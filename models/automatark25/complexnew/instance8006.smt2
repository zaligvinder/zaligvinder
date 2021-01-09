(declare-const X String)
; /filename=[^\n]*\x2epjpeg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pjpeg/i\x0a"))))
; ^(\+27|27|0)[0-9]{2}( |-)?[0-9]{3}( |-)?[0-9]{4}( |-)?(x[0-9]+)?(ext[0-9]+)?
(assert (not (str.in.re X (re.++ (re.union (str.to.re "+27") (str.to.re "27") (str.to.re "0")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.opt (re.++ (str.to.re "x") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to.re "ext") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; Host\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:X-Mailer:\x13as.starware.com\x0a"))))
; body=\x2521\x2521\x2521Optix\s+Host\x3a
(assert (str.in.re X (re.++ (str.to.re "body=%21%21%21Optix\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; LoggerovplUser-Agent\x3At=searchreslt\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (str.to.re "LoggerovplUser-Agent:t=searchreslt}{Sysuptime:\x0a"))))
(check-sat)
