(declare-const X String)
; Host\x3A\d+\x2Fcommunicatortb\swww\.fast-finder\.comBrowser\x2FGR
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "/communicatortb") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.comBrowser/GR\x0a")))))
(check-sat)
