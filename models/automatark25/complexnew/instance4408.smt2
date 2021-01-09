(declare-const X String)
; /Dr[.]?|Phd[.]?|MBA/i
(assert (str.in.re X (re.union (re.++ (str.to.re "/Dr") (re.opt (str.to.re "."))) (re.++ (str.to.re "Phd") (re.opt (str.to.re "."))) (str.to.re "MBA/i\x0a"))))
; /filename=[^\n]*\x2emax/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".max/i\x0a"))))
; (\d+)([,|.\d])*\d
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re ",") (str.to.re "|") (str.to.re ".") (re.range "0" "9"))) (re.range "0" "9") (str.to.re "\x0a")))))
; /\x2ewvx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wvx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /^\/\d{4}\/\d{7}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "/U\x0a")))))
(check-sat)
