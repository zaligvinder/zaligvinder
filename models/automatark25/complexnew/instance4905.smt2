(declare-const X String)
; /filename=[^\n]*\x2esvg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".svg/i\x0a"))))
; www\x2Emirarsearch\x2Ecom
(assert (str.in.re X (str.to.re "www.mirarsearch.com\x0a")))
; about\d+yxegtd\x2fefcwgHost\x3ATPSystemwww\x2Ee-finder\x2Ecc
(assert (str.in.re X (re.++ (str.to.re "about") (re.+ (re.range "0" "9")) (str.to.re "yxegtd/efcwgHost:TPSystemwww.e-finder.cc\x0a"))))
; ^(05)[0-9]{8}$
(assert (not (str.in.re X (re.++ (str.to.re "05") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2ecis([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.cis") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
