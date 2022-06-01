(declare-const X String)
; Host\u{3A}\s+www\u{2E}webfringe\u{2E}com\d+Version\d\u{2E}lSpywww\u{2E}lookquick\u{2E}comSubject\u{3A}\u{3a}\u{29}\r\n
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.webfringe.com") (re.+ (re.range "0" "9")) (str.to_re "Version") (re.range "0" "9") (str.to_re ".lSpywww.lookquick.comSubject::)\u{d}\u{a}\u{13}\u{a}")))))
; www\u{2E}altnet\u{2E}comHost\u{3A}NSIS_DOWNLOADSubject\u{3A}User-Agent\u{3A}www\u{2E}searchingall\u{2E}com
(assert (not (str.in_re X (str.to_re "www.altnet.com\u{1b}Host:NSIS_DOWNLOADSubject:User-Agent:www.searchingall.com\u{a}"))))
; ^(6553[0-5]|655[0-2]\d|65[0-4]\d\d|6[0-4]\d{3}|[1-5]\d{4}|[1-9]\d{0,3}|0)$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "6553") (re.range "0" "5")) (re.++ (str.to_re "655") (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "65") (re.range "0" "4") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "6") (re.range "0" "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "5") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 3) (re.range "0" "9"))) (str.to_re "0")) (str.to_re "\u{a}"))))
; welcomeforToolbarHost\u{3A}
(assert (not (str.in_re X (str.to_re "welcomeforToolbarHost:\u{a}"))))
; ^[\+\-]?\d+(,\d+)?$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ",") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
