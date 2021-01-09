(declare-const X String)
; Host\x3A\d+Litequick\x2Eqsrch\x2EcomaboutHost\x3AComputer\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Litequick.qsrch.comaboutHost:Computer}{Sysuptime:\x0a")))))
; ChildWebGuardian\d+Subject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to.re "Subject:\x0a")))))
; /\.php\?j=1&k=[0-9](i=[0-9])?$/U
(assert (str.in.re X (re.++ (str.to.re "/.php?j=1&k=") (re.range "0" "9") (re.opt (re.++ (str.to.re "i=") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; /\x2erv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
