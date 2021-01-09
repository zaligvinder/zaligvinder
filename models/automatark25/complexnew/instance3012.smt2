(declare-const X String)
; /encoding\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (str.in.re X (re.++ (str.to.re "/encoding=") (re.union (str.to.re "\x22") (str.to.re "'")) ((_ re.loop 1024 1024) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/\x0a"))))
; ^[SC]{2}[0-9]{6}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "S") (str.to.re "C"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; IDENTIFY.*\/cgi-bin\/PopupV.*Host\x3Asearchreslt
(assert (not (str.in.re X (re.++ (str.to.re "IDENTIFY") (re.* re.allchar) (str.to.re "/cgi-bin/PopupV") (re.* re.allchar) (str.to.re "Host:searchreslt\x0a")))))
; [({]?(0x)?[0-9a-fA-F]{8}([-,]?(0x)?[0-9a-fA-F]{4}){2}((-?[0-9a-fA-F]{4}-?[0-9a-fA-F]{12})|(,\{0x[0-9a-fA-F]{2}(,0x[0-9a-fA-F]{2}){7}\}))[)}]?
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "(") (str.to.re "{"))) (re.opt (str.to.re "0x")) ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) ((_ re.loop 2 2) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re ","))) (re.opt (str.to.re "0x")) ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (re.union (re.++ (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (str.to.re "-")) ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.++ (str.to.re ",{0x") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) ((_ re.loop 7 7) (re.++ (str.to.re ",0x") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (str.to.re "}"))) (re.opt (re.union (str.to.re ")") (str.to.re "}"))) (str.to.re "\x0a")))))
; ^([^ \x21-\x26\x28-\x2C\x2E-\x40\x5B-\x60\x7B-\xAC\xAE-\xBF\xF7\xFE]+)$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (re.range "!" "&") (re.range "(" ",") (re.range "." "@") (re.range "[" "`") (re.range "{" "\xac") (re.range "\xae" "\xbf") (str.to.re "\xf7") (str.to.re "\xfe"))) (str.to.re "\x0a"))))
(check-sat)
