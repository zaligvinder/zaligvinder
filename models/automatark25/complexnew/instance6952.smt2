(declare-const X String)
; /^\/\d{4}\/\d{7}$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "/U\x0a"))))
; </?(\w+)(\s*\w*\s*=\s*("[^"]*"|';[^';]';|[^>]*))*|/?>
(assert (str.in.re X (re.union (re.++ (str.to.re "<") (re.opt (str.to.re "/")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (str.to.re "';") (re.union (str.to.re "'") (str.to.re ";")) (str.to.re "';")) (re.* (re.comp (str.to.re ">"))))))) (re.++ (re.opt (str.to.re "/")) (str.to.re ">\x0a")))))
; is\w+gdvsotuqwsg\x2fdxt\.hd
(assert (not (str.in.re X (re.++ (str.to.re "is") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hd\x0a")))))
; ^\d+(\,\d{1,2})?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; Login\d+dll\x3FHOST\x3Acontains
(assert (str.in.re X (re.++ (str.to.re "Login") (re.+ (re.range "0" "9")) (str.to.re "dll?HOST:contains\x0a"))))
(check-sat)
