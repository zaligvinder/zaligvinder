(declare-const X String)
; /filename=[^\n]*\u{2e}xps/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xps/i\u{a}"))))
; ^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::\u{a}") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
; \b[P|p]?(OST|ost)?\.?\s*[O|o|0]?(ffice|FFICE)?\.?\s*[B|b][O|o|0]?[X|x]?\.?\s+[#]?(\d+)\b
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "P") (str.to_re "|") (str.to_re "p"))) (re.opt (re.union (str.to_re "OST") (str.to_re "ost"))) (re.opt (str.to_re ".")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.union (str.to_re "O") (str.to_re "|") (str.to_re "o") (str.to_re "0"))) (re.opt (re.union (str.to_re "ffice") (str.to_re "FFICE"))) (re.opt (str.to_re ".")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "B") (str.to_re "|") (str.to_re "b")) (re.opt (re.union (str.to_re "O") (str.to_re "|") (str.to_re "o") (str.to_re "0"))) (re.opt (re.union (str.to_re "X") (str.to_re "|") (str.to_re "x"))) (re.opt (str.to_re ".")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "#")) (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; \u{2F}NFO\u{2C}Registered.*Host\u{3A}\s+TPSystemHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "/NFO,Registered") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TPSystemHost:\u{a}"))))
(check-sat)
