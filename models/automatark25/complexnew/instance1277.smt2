(declare-const X String)
; /filename=[^\n]*\x2exps/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xps/i\x0a"))))
; ^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
; \b[P|p]?(OST|ost)?\.?\s*[O|o|0]?(ffice|FFICE)?\.?\s*[B|b][O|o|0]?[X|x]?\.?\s+[#]?(\d+)\b
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "P") (str.to.re "|") (str.to.re "p"))) (re.opt (re.union (str.to.re "OST") (str.to.re "ost"))) (re.opt (str.to.re ".")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "O") (str.to.re "|") (str.to.re "o") (str.to.re "0"))) (re.opt (re.union (str.to.re "ffice") (str.to.re "FFICE"))) (re.opt (str.to.re ".")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "B") (str.to.re "|") (str.to.re "b")) (re.opt (re.union (str.to.re "O") (str.to.re "|") (str.to.re "o") (str.to.re "0"))) (re.opt (re.union (str.to.re "X") (str.to.re "|") (str.to.re "x"))) (re.opt (str.to.re ".")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "#")) (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; \x2FNFO\x2CRegistered.*Host\x3A\s+TPSystemHost\x3A
(assert (str.in.re X (re.++ (str.to.re "/NFO,Registered") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystemHost:\x0a"))))
(check-sat)
