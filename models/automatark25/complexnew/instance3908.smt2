(declare-const X String)
; /\.exe$/U
(assert (not (str.in_re X (str.to_re "/.exe/U\u{a}"))))
; Toolbarverpop\u{2E}popuptoast\u{2E}comtvshowticketscount\u{2E}yok\u{2E}com
(assert (not (str.in_re X (str.to_re "Toolbarverpop.popuptoast.comtvshowticketscount.yok.com\u{a}"))))
; (\w+([-+.']\w+)*@(gmail.com))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re "+") (str.to_re ".") (str.to_re "'")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "@gmail") re.allchar (str.to_re "com")))))
; sql.*badurl\u{2E}grandstreetinteractive\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "sql") (re.* re.allchar) (str.to_re "badurl.grandstreetinteractive.com\u{a}")))))
; (Jan(uary)?|Feb(ruary)?|Mar(ch)?|Apr(il)?|May|Jun(e)?|Jul(y)?|Aug(ust)?|Sep(tember)?|Oct(ober)?|(Nov|Dec)(ember)?)
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "Jan") (re.opt (str.to_re "uary"))) (re.++ (str.to_re "Feb") (re.opt (str.to_re "ruary"))) (re.++ (str.to_re "Mar") (re.opt (str.to_re "ch"))) (re.++ (str.to_re "Apr") (re.opt (str.to_re "il"))) (str.to_re "May") (re.++ (str.to_re "Jun") (re.opt (str.to_re "e"))) (re.++ (str.to_re "Jul") (re.opt (str.to_re "y"))) (re.++ (str.to_re "Aug") (re.opt (str.to_re "ust"))) (re.++ (str.to_re "Sep") (re.opt (str.to_re "tember"))) (re.++ (str.to_re "Oct") (re.opt (str.to_re "ober"))) (re.++ (re.union (str.to_re "Nov") (str.to_re "Dec")) (re.opt (str.to_re "ember")))) (str.to_re "\u{a}")))))
(check-sat)
