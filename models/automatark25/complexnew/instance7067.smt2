(declare-const X String)
; TROJAN-Owner\u{3A}User-Agent\u{3a}%3fTs2\u{2F}
(assert (not (str.in_re X (str.to_re "TROJAN-Owner:User-Agent:%3fTs2/\u{a}"))))
; ^(\w+)s?\:\/\/(\w+)?(\.)?(\w+)?\.(\w+)$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re "s")) (str.to_re "://") (re.opt (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.opt (str.to_re ".")) (re.opt (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
; emailFrom\u{3A}User-Agent\u{3A}User-Agent\u{3A}select\u{2F}Get
(assert (str.in_re X (str.to_re "emailFrom:User-Agent:User-Agent:select/Get\u{a}")))
; /filename=[^\n]*\u{2e}pfb/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pfb/i\u{a}")))))
; ^[+]\d{1,2}\(\d{2,3}\)\d{6,8}(\#\d{1,10})?$
(assert (not (str.in_re X (re.++ (str.to_re "+") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ")") ((_ re.loop 6 8) (re.range "0" "9")) (re.opt (re.++ (str.to_re "#") ((_ re.loop 1 10) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
