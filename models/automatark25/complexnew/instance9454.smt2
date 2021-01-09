(declare-const X String)
; adblock\x2Elinkz\x2Ecomwww\.iggsey\.comHost\x3A
(assert (str.in.re X (str.to.re "adblock.linkz.comwww.iggsey.comHost:\x0a")))
; ^(((((\+)?(\s)?(\d{2,4}))(\s)?((\(0\))?)(\s)?|0)(\s|\-)?)(\s|\d{2})(\s|\-)?)?(\d{3})(\s|\-)?(\d{2})(\s|\-)?(\d{2})
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "(0)")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "+")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 4) (re.range "0" "9"))) (str.to.re "0")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^(\d{3}|\d{4})[-](\d{5})$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2exslt/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xslt/i\x0a")))))
(check-sat)
