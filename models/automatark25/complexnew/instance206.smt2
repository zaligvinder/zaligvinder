(declare-const X String)
; /\x2esetTimeOut\s*\x28\s*[\x22\x27][^\x28]+?\x2ecloseDoc\s*\x28[^\x29]*?\x29[^\x28]+?\x2eopenDoc\s*\x28[^\x29]*?\x29[^\x29]*?[\x22\x27]\s*,\s*[^\x29]*?\x29/i
(assert (not (str.in.re X (re.++ (str.to.re "/.setTimeOut") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.+ (re.comp (str.to.re "("))) (str.to.re ".closeDoc") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.comp (str.to.re ")"))) (str.to.re ")") (re.+ (re.comp (str.to.re "("))) (str.to.re ".openDoc") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.comp (str.to.re ")"))) (str.to.re ")") (re.* (re.comp (str.to.re ")"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re ")"))) (str.to.re ")/i\x0a")))))
; Word\w+My\s+\x22TheZC-BridgeUser-Agent\x3AserverUSER-Attached
(assert (str.in.re X (re.++ (str.to.re "Word") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "My") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22TheZC-BridgeUser-Agent:serverUSER-Attached\x0a"))))
; User-Agent\x3A\s+www\x2Emyarmory\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.myarmory.com\x0a")))))
; ^[A-Z]{3}\d{8}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2efon([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.fon") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
