(declare-const X String)
; (\{\\f\d*)\\([^;]+;)
(assert (str.in.re X (re.++ (str.to.re "\x5c\x0a{\x5cf") (re.* (re.range "0" "9")) (re.+ (re.comp (str.to.re ";"))) (str.to.re ";"))))
; forum=\s+\x2Ftoolbar\x2Fico\x2F
(assert (str.in.re X (re.++ (str.to.re "forum=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/\x0a"))))
; ((www|http)(\W+\S+[^).,:;?\]\} \r\n$]+))
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "www") (str.to.re "http")) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.+ (re.union (str.to.re ")") (str.to.re ".") (str.to.re ",") (str.to.re ":") (str.to.re ";") (str.to.re "?") (str.to.re "]") (str.to.re "}") (str.to.re " ") (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "$"))))))
; ^\{(.+)|^\\(.+)|(\}*)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "{") (re.+ re.allchar)) (re.++ (str.to.re "\x5c") (re.+ re.allchar)) (re.++ (re.* (str.to.re "}")) (str.to.re "\x0a"))))))
; /filename=[^\n]*\x2empeg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mpeg/i\x0a"))))
(check-sat)
