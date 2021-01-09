(declare-const X String)
; [\x01-\x08,\x0A-\x1F,\x7F,\x81,\x8D,\x8F,\x90,\x9D]
(assert (str.in.re X (re.++ (re.union (re.range "\x01" "\x08") (str.to.re ",") (re.range "\x0a" "\x1f") (str.to.re "\x7f") (str.to.re "\x81") (str.to.re "\x8d") (str.to.re "\x8f") (str.to.re "\x90") (str.to.re "\x9d")) (str.to.re "\x0a"))))
; Spy\s+toolbar_domain_redirect
(assert (str.in.re X (re.++ (str.to.re "Spy") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "toolbar_domain_redirect\x0a"))))
; /\x2exml([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xml") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^[a-zA-Z_][a-zA-Z0-9_]*$
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a")))))
; \x2Fezsb\s+hirmvtg\x2fggqh\.kqh\dRemotetoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/ezsb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hirmvtg/ggqh.kqh\x1b") (re.range "0" "9") (str.to.re "Remotetoolsbar.kuaiso.com\x0a")))))
(check-sat)
