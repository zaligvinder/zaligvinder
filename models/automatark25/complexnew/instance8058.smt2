(declare-const X String)
; \x2Fbar_pl\x2Fchk\.fcgiHWAEcom\x2Findex\.php\?tpid=
(assert (str.in.re X (str.to.re "/bar_pl/chk.fcgiHWAEcom/index.php?tpid=\x0a")))
; ((\bm_[a-zA-Z\d]*\b)|(\bin_[a-zA-Z\d]*\b)|(\bin _[a-zA-Z\d]*\b))
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "m_") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to.re "in_") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to.re "in _") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re "\x0a")))))
; ^[a-zA-Z0-9\s]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; /\x2ecrx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.crx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
