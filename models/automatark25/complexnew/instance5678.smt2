(declare-const X String)
; (""|[^"])*
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "\u{22}\u{22}") (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{a}"))))
; (^\d*\.?\d*[1-9]+\d*$)|(^[1-9]+\d*\.\d*$)
(assert (str.in_re X (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9"))))))
; ^[^ ,0]*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re ",") (str.to_re "0"))) (str.to_re "\u{a}")))))
; Hello\u{2E}\s+ovplrichfind\u{2E}comCookie\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Hello.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ovplrichfind.comCookie:\u{a}")))))
; PORT\u{3D}internalcyber@yahoo\u{2E}comHeaders
(assert (str.in_re X (str.to_re "PORT=internalcyber@yahoo.comHeaders\u{a}")))
(check-sat)
