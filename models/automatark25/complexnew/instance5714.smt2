(declare-const X String)
; /filename=[^\n]*\x2ewmv/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wmv/i\x0a"))))
; User-Agent\x3AreadyHost\x3AHost\x3ASubject\x3Awininetproducts
(assert (str.in.re X (str.to.re "User-Agent:readyHost:Host:Subject:wininetproducts\x0a")))
; Subject\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (str.to.re "Subject:as.starware.com/dp/search?x=\x0a")))
; ProSpywww\x2Eemp3finder\x2Ecomwww
(assert (not (str.in.re X (str.to.re "ProSpywww.emp3finder.comwww\x0a"))))
(check-sat)
