(declare-const X String)
; (^\d*\.?\d*[0-9]+\d*$)|(^[0-9]+\d*\.\d*$)
(assert (str.in.re X (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.+ (re.range "0" "9")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9"))))))
; /[a-z]\x3d[a-f\d]{126}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 126 126) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/P\x0a")))))
; stats\x2edrivecleaner\x2ecom\sPARSERInformationurl=Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "stats.drivecleaner.com\x13") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PARSERInformationurl=Host:\x0a")))))
; ^((([0]?[1-9]|1[0-2])(:|\.)(00|15|30|45)?( )?(AM|am|aM|Am|PM|pm|pM|Pm))|(([0]?[0-9]|1[0-9]|2[0-3])(:|\.)(00|15|30|45)?))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (str.to.re ":") (str.to.re ".")) (re.opt (re.union (str.to.re "00") (str.to.re "15") (str.to.re "30") (str.to.re "45"))) (re.opt (str.to.re " ")) (re.union (str.to.re "AM") (str.to.re "am") (str.to.re "aM") (str.to.re "Am") (str.to.re "PM") (str.to.re "pm") (str.to.re "pM") (str.to.re "Pm"))) (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.union (str.to.re ":") (str.to.re ".")) (re.opt (re.union (str.to.re "00") (str.to.re "15") (str.to.re "30") (str.to.re "45"))))) (str.to.re "\x0a")))))
; /\/click\?sid=\w{40}\&cid=/Ui
(assert (str.in.re X (re.++ (str.to.re "//click?sid=") ((_ re.loop 40 40) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "&cid=/Ui\x0a"))))
(check-sat)
