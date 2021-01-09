(declare-const X String)
; ^[+-]? *100(\.0{0,2})? *%?$|^[+-]? *\d{1,2}(\.\d{1,2})? *%?$
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (str.to.re " ")) (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (str.to.re "0")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%"))) (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (str.to.re " ")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))))
; /filename=[^\n]*\x2empg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mpg/i\x0a"))))
; \b(0?[1-9]|1[0-2])(\-)(0?[1-9]|1[0-9]|2[0-9]|3[0-1])(\-)(0[0-8])\b
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "-") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "-\x0a0") (re.range "0" "8"))))
; NetControl\x2EServerNetTrackerSiLENTHost\x3A
(assert (str.in.re X (str.to.re "NetControl.Server\x13NetTrackerSiLENTHost:\x0a")))
; /([^\x00-\xFF]\s*)/u
(assert (str.in.re X (re.++ (str.to.re "//u\x0a") (re.range "\x00" "\xff") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
(check-sat)
