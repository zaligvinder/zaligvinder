(declare-const X String)
; /^User-Agent\x3a\x20[A-Z]{9}\x0d\x0a/Hm
(assert (str.in.re X (re.++ (str.to.re "/User-Agent: ") ((_ re.loop 9 9) (re.range "A" "Z")) (str.to.re "\x0d\x0a/Hm\x0a"))))
; Subject\x3a\s+Yeah\!Online\x2521\x2521\x2521
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Yeah!Online%21%21%21\x0a"))))
; User-Agent\x3A\s+ocllceclbhs\x2fgth.*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth") (re.* re.allchar) (str.to.re "Host:\x0a")))))
; /filename=[^\n]*\x2efli/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fli/i\x0a"))))
(check-sat)
