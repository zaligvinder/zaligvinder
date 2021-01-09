(declare-const X String)
; HWAE\s+\x2Fta\x2FNEWS\x2FGuptacharloomcompany\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "HWAE") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/ta/NEWS/Guptacharloomcompany.com\x0a"))))
; /\x2ert([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^(\+?420)? ?[0-9]{3} ?[0-9]{3} ?[0-9]{3}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "420"))) (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\/stat_svc\/$/U
(assert (not (str.in.re X (str.to.re "//stat_svc//U\x0a"))))
; \x2Fbar_pl\x2Fchk\.fcgiHost\x3a
(assert (str.in.re X (str.to.re "/bar_pl/chk.fcgiHost:\x0a")))
(check-sat)
