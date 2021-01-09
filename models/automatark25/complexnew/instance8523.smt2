(declare-const X String)
; /\x2ermp([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rmp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^\#?[A-Fa-f0-9]{3}([A-Fa-f0-9]{3})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "#")) ((_ re.loop 3 3) (re.union (re.range "A" "F") (re.range "a" "f") (re.range "0" "9"))) (re.opt ((_ re.loop 3 3) (re.union (re.range "A" "F") (re.range "a" "f") (re.range "0" "9")))) (str.to.re "\x0a")))))
; (\/\/-->\s*)?<\/?SCRIPT([^>]*)>(\s*<!--\s)?
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "//-->") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "<") (re.opt (str.to.re "/")) (str.to.re "SCRIPT") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.opt (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "<!--") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a"))))
; A-311Host\x3Alnzzlnbk\x2fpkrm\.finSubject\x3a
(assert (str.in.re X (str.to.re "A-311Host:lnzzlnbk/pkrm.finSubject:\x0a")))
(check-sat)
