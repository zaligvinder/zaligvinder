(declare-const X String)
; ^(\(\d{3}\)|\d{3})[\s.-]?\d{3}[\s.-]?\d{4}$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eswf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".swf/i\x0a"))))
; /^SpyBuddy\s+Activity\s+Logs/smi
(assert (not (str.in.re X (re.++ (str.to.re "/SpyBuddy") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Activity") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Logs/smi\x0a")))))
; /[^imsxeADSUXu]([imsxeADSUXu]*)$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "i") (str.to.re "m") (str.to.re "s") (str.to.re "x") (str.to.re "e") (str.to.re "A") (str.to.re "D") (str.to.re "S") (str.to.re "U") (str.to.re "X") (str.to.re "u")) (re.* (re.union (str.to.re "i") (str.to.re "m") (str.to.re "s") (str.to.re "x") (str.to.re "e") (str.to.re "A") (str.to.re "D") (str.to.re "S") (str.to.re "U") (str.to.re "X") (str.to.re "u"))) (str.to.re "/\x0a"))))
(check-sat)
