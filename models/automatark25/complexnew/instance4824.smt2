(declare-const X String)
; /filename=[^\n]*\x2edocm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".docm/i\x0a")))))
; (([\w-]+://?|www[.])[^\s()<>]+)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ":/") (re.opt (str.to.re "/"))) (str.to.re "www.")) (re.+ (re.union (str.to.re "(") (str.to.re ")") (str.to.re "<") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
; ((\(?\d{2,5}\)?)?(\d|-| )?(15((\d|-| ){6,13})))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.++ (re.opt (str.to.re "(")) ((_ re.loop 2 5) (re.range "0" "9")) (re.opt (str.to.re ")")))) (re.opt (re.union (re.range "0" "9") (str.to.re "-") (str.to.re " "))) (str.to.re "15") ((_ re.loop 6 13) (re.union (re.range "0" "9") (str.to.re "-") (str.to.re " ")))))))
(check-sat)
