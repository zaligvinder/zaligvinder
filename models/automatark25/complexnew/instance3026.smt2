(declare-const X String)
; Host\x3A\dName=Your\+Host\+is\x3A.*has\s+ComputerKeylogger\x2EcomHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Name=Your+Host+is:") (re.* re.allchar) (str.to.re "has") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ComputerKeylogger.comHost:\x0a")))))
; /GET\s\/[\w-]{64}\sHTTP\/1/
(assert (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 64 64) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "HTTP/1/\x0a"))))
; ((^\d{8})|(^\d{2}[ ]\d{2}[ ]\d{2}[ ]\d{2})|(^\d{4}[ ]\d{4}))$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 8 8) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
