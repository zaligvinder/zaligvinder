(declare-const X String)
; ^((\+|00)[1-9]{1,3})?(\-| {0,1})?(([\d]{0,3})(\-| {0,1})?([\d]{5,11})){1}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "+") (str.to.re "00")) ((_ re.loop 1 3) (re.range "1" "9")))) (re.opt (re.union (str.to.re "-") (re.opt (str.to.re " ")))) ((_ re.loop 1 1) (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (re.opt (str.to.re " ")))) ((_ re.loop 5 11) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /\x2ejfif?([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jfi") (re.opt (str.to.re "f")) (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; upgrade\x2Eqsrch\x2Einfox2Fie\.aspdcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (str.to.re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\x0a"))))
(check-sat)
