(declare-const X String)
; /\x2ertf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.rtf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; (\/\/-->\s*)?<\/?SCRIPT([^>]*)>(\s*<!--\s)?
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "//-->") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "<") (re.opt (str.to.re "/")) (str.to.re "SCRIPT") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.opt (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "<!--") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a"))))
; (^0[78][2347][0-9]{7})
(assert (not (str.in.re X (re.++ (str.to.re "\x0a0") (re.union (str.to.re "7") (str.to.re "8")) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "7")) ((_ re.loop 7 7) (re.range "0" "9"))))))
(check-sat)
