(declare-const X String)
; ^[\-]{0,1}[0-9]{1,}(([\.\,]{0,1}[0-9]{1,})|([0-9]{0,}))$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (re.union (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) (re.+ (re.range "0" "9"))) (re.* (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^([0][1-9]|[1][0-2]):[0-5][0-9] {1}(AM|PM|am|pm)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") ((_ re.loop 1 1) (str.to.re " ")) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "am") (str.to.re "pm")) (str.to.re "\x0a"))))
; /stat2\.php\?w=\d+\x26i=[0-9a-f]{32}\x26a=\d+/Ui
(assert (str.in.re X (re.++ (str.to.re "/stat2.php?w=") (re.+ (re.range "0" "9")) (str.to.re "&i=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "&a=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)
