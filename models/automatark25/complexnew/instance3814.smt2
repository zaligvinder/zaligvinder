(declare-const X String)
; /filename=[^\n]*\x2exbm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xbm/i\x0a"))))
; (\d+)([,|.\d])*\d
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re ",") (str.to.re "|") (str.to.re ".") (re.range "0" "9"))) (re.range "0" "9") (str.to.re "\x0a")))))
; Host\x3a\s+Agentbody=\x2521\x2521\x2521OptixSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13Subject:\x0a")))))
; [\\""=/>](25[0-4]|2[0-4][0-9]|1\d{2}|\d{2})\.((25[0-4]|2[0-4][0-9]|1\d{2}|\d{1,2})\.){2}(25[0-4]|2[0-4][0-9]|1\d{2}|\d{2}|[1-9])\b[\\""=:;,/<]
(assert (str.in.re X (re.++ (re.union (str.to.re "\x5c") (str.to.re "\x22") (str.to.re "=") (str.to.re "/") (str.to.re ">")) (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 2) (re.++ (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 1 2) (re.range "0" "9"))) (str.to.re "."))) (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.range "1" "9")) (re.union (str.to.re "\x5c") (str.to.re "\x22") (str.to.re "=") (str.to.re ":") (str.to.re ";") (str.to.re ",") (str.to.re "/") (str.to.re "<")) (str.to.re "\x0a"))))
(check-sat)
