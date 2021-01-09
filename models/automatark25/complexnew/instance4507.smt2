(declare-const X String)
; ^[0-9]{6}-[0-9pPtTfF][0-9]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "-") (re.union (re.range "0" "9") (str.to.re "p") (str.to.re "P") (str.to.re "t") (str.to.re "T") (str.to.re "f") (str.to.re "F")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2esetTimeOut\s*\x28\s*[\x22\x27][^\x28]+?\x2ecloseDoc\s*\x28[^\x29]*?\x29[^\x28]+?\x2eopenDoc\s*\x28[^\x29]*?\x29[^\x29]*?[\x22\x27]\s*,\s*[^\x29]*?\x29/i
(assert (str.in.re X (re.++ (str.to.re "/.setTimeOut") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.+ (re.comp (str.to.re "("))) (str.to.re ".closeDoc") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.comp (str.to.re ")"))) (str.to.re ")") (re.+ (re.comp (str.to.re "("))) (str.to.re ".openDoc") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.comp (str.to.re ")"))) (str.to.re ")") (re.* (re.comp (str.to.re ")"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re ")"))) (str.to.re ")/i\x0a"))))
; ^([a-zA-Z0-9])+\\{1}([a-zA-Z0-9])+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re "\x5c")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^((0[1-9])|(1[0-2]))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "\x0a")))))
; DigExtNetBus\x5BStatic
(assert (str.in.re X (str.to.re "DigExtNetBus[Static\x0a")))
(check-sat)
