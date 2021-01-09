(declare-const X String)
; ^[0-9]+[NnSs] [0-9]+[WwEe]$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.union (str.to.re "N") (str.to.re "n") (str.to.re "S") (str.to.re "s")) (str.to.re " ") (re.+ (re.range "0" "9")) (re.union (str.to.re "W") (str.to.re "w") (str.to.re "E") (str.to.re "e")) (str.to.re "\x0a"))))
; /filename\s*=\s*[^\r\n]*?\x2emcl[\x22\x27\x3b\s\r\n]/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re ".mcl") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ";") (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/i\x0a")))))
; ^1[34][0-9][0-9]\/((1[0-2])|([1-9]))\/(([12][0-9])|(3[01])|[1-9])$
(assert (not (str.in.re X (re.++ (str.to.re "1") (re.union (str.to.re "3") (str.to.re "4")) (re.range "0" "9") (re.range "0" "9") (str.to.re "/") (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to.re "/") (re.union (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.range "1" "9")) (str.to.re "\x0a")))))
; ^([0][1-9]|[1][0-2]):[0-5][0-9] {1}(AM|PM|am|pm)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") ((_ re.loop 1 1) (str.to.re " ")) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "am") (str.to.re "pm")) (str.to.re "\x0a"))))
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Everyware") (re.* re.allchar) (str.to.re "Email") (re.* re.allchar) (str.to.re "Host:stepwww.kornputers.com\x0a"))))
(check-sat)
