(declare-const X String)
; www\x2Epurityscan\x2Ecom.*
(assert (not (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.* re.allchar) (str.to.re "\x0a")))))
; OS\x2F\dSpediacom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (re.++ (str.to.re "OS/") (re.range "0" "9") (str.to.re "Spediacom/index.php?tpid=\x0a")))))
; User-Agent\x3A\s+ocllceclbhs\x2fgthNeed2Find
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gthNeed2Find\x0a")))))
(check-sat)
