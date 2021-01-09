(declare-const X String)
; /STOR fp[0-9A-F]{44}\x2ebin/
(assert (not (str.in.re X (re.++ (str.to.re "/STOR fp") ((_ re.loop 44 44) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re ".bin/\x0a")))))
; ^(05)[0-9]{8}$
(assert (not (str.in.re X (re.++ (str.to.re "05") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; engineResultUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "engineResultUser-Agent:\x0a"))))
; /filename=[^\n]*\x2esvg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".svg/i\x0a"))))
(check-sat)
