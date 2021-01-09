(declare-const X String)
; ^((([0]?[1-9]|1[0-2])(:|\.)(00|15|30|45)?( )?(AM|am|aM|Am|PM|pm|pM|Pm))|(([0]?[0-9]|1[0-9]|2[0-3])(:|\.)(00|15|30|45)?))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (str.to.re ":") (str.to.re ".")) (re.opt (re.union (str.to.re "00") (str.to.re "15") (str.to.re "30") (str.to.re "45"))) (re.opt (str.to.re " ")) (re.union (str.to.re "AM") (str.to.re "am") (str.to.re "aM") (str.to.re "Am") (str.to.re "PM") (str.to.re "pm") (str.to.re "pM") (str.to.re "Pm"))) (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.union (str.to.re ":") (str.to.re ".")) (re.opt (re.union (str.to.re "00") (str.to.re "15") (str.to.re "30") (str.to.re "45"))))) (str.to.re "\x0a"))))
; ^(1[0-2]|0?[1-9]):([0-5]?[0-9])( AM| PM)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (str.to.re ":\x0a") (re.opt (re.range "0" "5")) (re.range "0" "9") (str.to.re " ") (re.union (str.to.re "AM") (str.to.re "PM")))))
; /STOR\s+Lbtf\x2eugz(\d{2}\x2d){2}\d{4}(\x2d\d{2}){3}\x2eugz/
(assert (str.in.re X (re.++ (str.to.re "/STOR") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Lbtf.ugz") ((_ re.loop 2 2) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 3 3) (re.++ (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re ".ugz/\x0a"))))
; (^\d{5}-\d{3}|^\d{2}.\d{3}-\d{3}|\d{8})
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 8 8) (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^\d{1,3}\.\d{1,4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
