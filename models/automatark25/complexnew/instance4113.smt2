(declare-const X String)
; 1?[ \.\-\+]?[(]?([0-9]{3})?[)]?[ \.\-\+]?[0-9]{3}[ \.\-\+]?[0-9]{4}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "1")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-") (str.to.re "+"))) (re.opt (str.to.re "(")) (re.opt ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-") (str.to.re "+"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-") (str.to.re "+"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; \x2Fbar_pl\x2Fchk_bar\.fcgiUser-Agent\x3A
(assert (str.in.re X (str.to.re "/bar_pl/chk_bar.fcgiUser-Agent:\x0a")))
; /filename=[^\n]*\x2ehlp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hlp/i\x0a")))))
(check-sat)
