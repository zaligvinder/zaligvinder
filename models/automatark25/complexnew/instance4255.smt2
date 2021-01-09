(declare-const X String)
; filename=\x22\s+www\x2Epeer2mail\x2Ecom.*LOG
(assert (str.in.re X (re.++ (str.to.re "filename=\x22") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com") (re.* re.allchar) (str.to.re "LOG\x0a"))))
; /filename=[^\n]*\x2evqf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vqf/i\x0a"))))
; \b[P|p]?(OST|ost)?\.?\s*[O|o|0]?(ffice|FFICE)?\.?\s*[B|b][O|o|0]?[X|x]?\.?\s+[#]?(\d+)\b
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "P") (str.to.re "|") (str.to.re "p"))) (re.opt (re.union (str.to.re "OST") (str.to.re "ost"))) (re.opt (str.to.re ".")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "O") (str.to.re "|") (str.to.re "o") (str.to.re "0"))) (re.opt (re.union (str.to.re "ffice") (str.to.re "FFICE"))) (re.opt (str.to.re ".")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "B") (str.to.re "|") (str.to.re "b")) (re.opt (re.union (str.to.re "O") (str.to.re "|") (str.to.re "o") (str.to.re "0"))) (re.opt (re.union (str.to.re "X") (str.to.re "|") (str.to.re "x"))) (re.opt (str.to.re ".")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "#")) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2Fdirect\.php\x3Ff=[0-9]{8}\x26s=[a-z0-9]{3}\.[a-z]{1,4}/U
(assert (str.in.re X (re.++ (str.to.re "//direct.php?f=") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "&s=") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re "/U\x0a"))))
(check-sat)
