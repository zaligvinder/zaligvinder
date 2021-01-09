(declare-const X String)
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (str.in.re X (str.to.re "corep.dmcast.comOwner:\x0a")))
; /filename=[^\n]*\x2emkv/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mkv/i\x0a"))))
; ^\s*-?(\d*\.)?([0-2])?[0-9]:([0-5])?[0-9]:([0-5])?[0-9](\.[0-9]{1,7})?\s*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.++ (re.* (re.range "0" "9")) (str.to.re "."))) (re.opt (re.range "0" "2")) (re.range "0" "9") (str.to.re ":") (re.opt (re.range "0" "5")) (re.range "0" "9") (str.to.re ":") (re.opt (re.range "0" "5")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 7) (re.range "0" "9")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
