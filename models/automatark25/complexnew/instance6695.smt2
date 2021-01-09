(declare-const X String)
; ^(\(\d{3}\)|\d{3})[\s.-]?\d{3}[\s.-]?\d{4}$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; Google\s+-~-GREATHost\x3aFILESIZE\x3E
(assert (not (str.in.re X (re.++ (str.to.re "Google") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-~-GREATHost:FILESIZE>\x13\x0a")))))
; ^[\w ]{0,}$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; ^(\d)?[ ]*[\(\.\-]?(\d{3})[\)\.\-]?[ ]*(\d{3})[\.\- ]?(\d{4})[ ]*(x|ext\.?)?[ ]*(\d{1,7})?$
(assert (not (str.in.re X (re.++ (re.opt (re.range "0" "9")) (re.* (str.to.re " ")) (re.opt (re.union (str.to.re "(") (str.to.re ".") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ")") (str.to.re ".") (str.to.re "-"))) (re.* (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (str.to.re " ")) (re.opt (re.union (str.to.re "x") (re.++ (str.to.re "ext") (re.opt (str.to.re "."))))) (re.* (str.to.re " ")) (re.opt ((_ re.loop 1 7) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
