(declare-const X String)
; (^[1]$)|(^[1]+\d*\.+\d*[1-5]$)
(assert (not (str.in_re X (re.union (str.to_re "1") (re.++ (str.to_re "\u{a}") (re.+ (str.to_re "1")) (re.* (re.range "0" "9")) (re.+ (str.to_re ".")) (re.* (re.range "0" "9")) (re.range "1" "5"))))))
(check-sat)
