(declare-const X String)
; ^([0-1]?[0-9]|[2][0-3])[:|.]([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.union (str.to.re ":") (str.to.re "|") (str.to.re ".")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9"))))
; /filename=[^\n]*\x2ecsv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".csv/i\x0a")))))
; 32e3432ew+
(assert (str.in.re X (re.++ (str.to.re "32e3432e") (re.+ (str.to.re "w")) (str.to.re "\x0a"))))
; Buy Cheap handbags,Discount handbags,Cheap Leather handbags -Alltopgoods.com
(assert (not (str.in.re X (re.++ (str.to.re "Buy Cheap handbags,Discount handbags,Cheap Leather handbags -Alltopgoods") re.allchar (str.to.re "com\x0a")))))
(check-sat)
