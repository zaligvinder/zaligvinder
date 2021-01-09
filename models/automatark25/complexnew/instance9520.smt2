(declare-const X String)
; http://\([a-zA-Z0-9_\-]\+\(\.[a-zA-Z0-9_\-]\+\)\+\)\+:\?[0-9]\?\(/*[a-zA-Z0-9_\-#]*\.*\)*?\?\(&*[a-zA-Z0-9;_+/.\-%]*-*=*[a-zA-Z0-9;_+/.\-%]*-*\)*
(assert (str.in.re X (re.++ (str.to.re "http://(") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-")) (str.to.re "+(.") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-")) (str.to.re "+)+)+:?") (re.range "0" "9") (str.to.re "?(") (re.* (str.to.re "/")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "#"))) (re.* (str.to.re ".")) (re.* (str.to.re ")")) (str.to.re "?(") (re.* (str.to.re "&")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ";") (str.to.re "_") (str.to.re "+") (str.to.re "/") (str.to.re ".") (str.to.re "-") (str.to.re "%"))) (re.* (str.to.re "-")) (re.* (str.to.re "=")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ";") (str.to.re "_") (str.to.re "+") (str.to.re "/") (str.to.re ".") (str.to.re "-") (str.to.re "%"))) (re.* (str.to.re "-")) (re.* (str.to.re ")")) (str.to.re "\x0a"))))
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "PASSW=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/ta/NEWS/") (re.* re.allchar) (str.to.re "loomcompany.com\x0a"))))
; e2give\.comADRemoteHost\x3A
(assert (not (str.in.re X (str.to.re "e2give.comADRemoteHost:\x0a"))))
; /filename=[^\n]*\x2efdf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fdf/i\x0a"))))
(check-sat)
