(declare-const X String)
; PASSW=\s+\u{2F}ta\u{2F}NEWS\u{2F}.*loomcompany\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/") (re.* re.allchar) (str.to_re "loomcompany.com\u{a}")))))
; Toolbar\w+SoftActivitypassword\u{3B}0\u{3B}Incorrect
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "SoftActivity\u{13}password;0;Incorrect\u{a}"))))
; &\#x0*(0|1|2|3|4|5|6|7|8|B|C|E|F|10|11|12|13|14|15|16|17|18|19|1A|1B|1C|1D|1E|1F);
(assert (str.in_re X (re.++ (str.to_re "&#x") (re.* (str.to_re "0")) (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "B") (str.to_re "C") (str.to_re "E") (str.to_re "F") (str.to_re "10") (str.to_re "11") (str.to_re "12") (str.to_re "13") (str.to_re "14") (str.to_re "15") (str.to_re "16") (str.to_re "17") (str.to_re "18") (str.to_re "19") (str.to_re "1A") (str.to_re "1B") (str.to_re "1C") (str.to_re "1D") (str.to_re "1E") (str.to_re "1F")) (str.to_re ";\u{a}"))))
(check-sat)
