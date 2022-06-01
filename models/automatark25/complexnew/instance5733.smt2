(declare-const X String)
; (^\-|\+)?([1-9]{1}[0-9]{0,2}(\,\d{3})*|[1-9]{1}\d{0,})$|^0?$
(assert (str.in_re X (re.union (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "0")) (str.to_re "\u{a}")))))
; CommonName.*st=\s+Contactfrom=GhostVoiceServerUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "CommonName") (re.* re.allchar) (str.to_re "st=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Contactfrom=GhostVoiceServerUser-Agent:\u{a}")))))
; www\u{2E}cameup\u{2E}com\s+spyblini\u{2E}ini
(assert (not (str.in_re X (re.++ (str.to_re "www.cameup.com\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblini.ini\u{a}")))))
; ([0-9]{11}$)|(^[7-9][0-9]{9}$)
(assert (str.in_re X (re.union ((_ re.loop 11 11) (re.range "0" "9")) (re.++ (str.to_re "\u{a}") (re.range "7" "9") ((_ re.loop 9 9) (re.range "0" "9"))))))
(check-sat)
