(declare-const X String)
; <[^>]*?>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
; ^[\n <"';]*([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+)
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "\x0a") (str.to.re " ") (str.to.re "<") (str.to.re "\x22") (str.to.re "'") (str.to.re ";"))) (str.to.re "\x0a") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-"))))))
; YWRtaW46cGFzc3dvcmQ[^\n\r]*DA[^\n\r]*Host\x3Awww\x2Ee-finder\x2Ecc
(assert (not (str.in.re X (re.++ (str.to.re "YWRtaW46cGFzc3dvcmQ") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "DA") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:www.e-finder.cc\x0a")))))
; /^<!--\s+[\w]{52,}\s+-->\r\n/smi
(assert (not (str.in.re X (re.++ (str.to.re "/<!--") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-->\x0d\x0a/smi\x0a") ((_ re.loop 52 52) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
(check-sat)
