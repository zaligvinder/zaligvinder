(declare-const X String)
; \u{2F}cgi\u{2F}logurl\.cgi\s+IDENTIFY.*max-www\u{2E}u88\u{2E}cn
(assert (str.in_re X (re.++ (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "max-www.u88.cn\u{a}"))))
; ^([a-zA-Z])*$
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
; (ISBN[-]*(1[03])*[ ]*(: ){0,1})*(([0-9Xx][- ]*){13}|([0-9Xx][- ]*){10})
(assert (str.in_re X (re.++ (re.* (re.++ (str.to_re "ISBN") (re.* (str.to_re "-")) (re.* (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "3")))) (re.* (str.to_re " ")) (re.opt (str.to_re ": ")))) (re.union ((_ re.loop 13 13) (re.++ (re.union (re.range "0" "9") (str.to_re "X") (str.to_re "x")) (re.* (re.union (str.to_re "-") (str.to_re " "))))) ((_ re.loop 10 10) (re.++ (re.union (re.range "0" "9") (str.to_re "X") (str.to_re "x")) (re.* (re.union (str.to_re "-") (str.to_re " ")))))) (str.to_re "\u{a}"))))
(check-sat)
