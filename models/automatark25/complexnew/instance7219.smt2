(declare-const X String)
; s_sq=aolsnssigninUser-Agent\x3A
(assert (str.in.re X (str.to.re "s_sq=aolsnssigninUser-Agent:\x0a")))
; ProxyDownCurrentUser-Agent\x3AHost\x3Acom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "ProxyDownCurrentUser-Agent:Host:com/index.php?tpid=\x0a"))))
; /filename=[^\n]*\x2erat/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rat/i\x0a"))))
; to\d+User-Agent\x3AFiltered
(assert (not (str.in.re X (re.++ (str.to.re "to") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:Filtered\x0a")))))
; [0][^0]|([^0]{1}(.){1})|[^0]*
(assert (str.in.re X (re.union (re.++ (str.to.re "0") (re.comp (str.to.re "0"))) (re.++ ((_ re.loop 1 1) (re.comp (str.to.re "0"))) ((_ re.loop 1 1) re.allchar)) (re.++ (re.* (re.comp (str.to.re "0"))) (str.to.re "\x0a")))))
(check-sat)
