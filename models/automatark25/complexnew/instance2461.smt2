(declare-const X String)
; ^([0-1]?[0-9]|[2][0-3])[:|.]([0-5][0-9])$
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.union (str.to_re ":") (str.to_re "|") (str.to_re ".")) (str.to_re "\u{a}") (re.range "0" "5") (re.range "0" "9"))))
; /filename=[^\n]*\u{2e}csv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".csv/i\u{a}")))))
; 32e3432ew+
(assert (str.in_re X (re.++ (str.to_re "32e3432e") (re.+ (str.to_re "w")) (str.to_re "\u{a}"))))
; Buy Cheap handbags,Discount handbags,Cheap Leather handbags -Alltopgoods.com
(assert (not (str.in_re X (re.++ (str.to_re "Buy Cheap handbags,Discount handbags,Cheap Leather handbags -Alltopgoods") re.allchar (str.to_re "com\u{a}")))))
(check-sat)
