(declare-const X String)
; Host\x3A\dtoolbar\x2Ehotblox\x2Ecom\dHost\x3Ahttp\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "toolbar.hotblox.com") (re.range "0" "9") (str.to.re "Host:http://mysearch.dropspam.com/index.php?tpid=\x13\x0a"))))
; ServerHost\x3Atid\x3D\x25toolbar\x5Fidcomtrustyfiles\x2Ecom
(assert (not (str.in.re X (str.to.re "ServerHost:tid=%toolbar_idcomtrustyfiles.com\x0a"))))
; A-311\s+lnzzlnbk\x2fpkrm\.finSubject\x3aBasic
(assert (not (str.in.re X (re.++ (str.to.re "A-311") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.finSubject:Basic\x0a")))))
; ((\d{4})|(\d{2}))|(0?[2469]|11)(-|\/)((0[0-9])|([12])([0-9]?)|(3[0]?))(-|\/)((0?[13578]|10|12)(-|\/)((0[0-9])|([12])([0-9]?)|(3[01]?))(-|\/)((\d{4}|\d{2})))
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.union (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "9"))) (str.to.re "11")) (re.union (str.to.re "-") (str.to.re "/")) (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.opt (re.range "0" "9"))) (re.++ (str.to.re "3") (re.opt (str.to.re "0")))) (re.union (str.to.re "-") (str.to.re "/")) (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "8"))) (str.to.re "10") (str.to.re "12")) (re.union (str.to.re "-") (str.to.re "/")) (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.opt (re.range "0" "9"))) (re.++ (str.to.re "3") (re.opt (re.union (str.to.re "0") (str.to.re "1"))))) (re.union (str.to.re "-") (str.to.re "/")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))))
; Host\x3A[^\n\r]*cache\x2Eeverer\x2Ecom\s+from\.myway\.comToolbar
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "cache.everer.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbar\x0a"))))
(check-sat)
