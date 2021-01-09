(declare-const X String)
; ([0-9]+:)?[0-9]+\s*(am|pm)|[0-9]+:[0-9]+\s*(am|pm)?
(assert (str.in.re X (re.union (re.++ (re.opt (re.++ (re.+ (re.range "0" "9")) (str.to.re ":"))) (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "am") (str.to.re "pm"))) (re.++ (re.+ (re.range "0" "9")) (str.to.re ":") (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "am") (str.to.re "pm"))) (str.to.re "\x0a")))))
; ^\d{1,2}\/\d{1,2}\/\d{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2epor/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".por/i\x0a"))))
(check-sat)
