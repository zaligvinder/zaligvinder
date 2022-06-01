(declare-const X String)
; http://\([a-zA-Z0-9_\-]\+\(\.[a-zA-Z0-9_\-]\+\)\+\)\+:\?[0-9]\?\(/*[a-zA-Z0-9_\-#]*\.*\)*?\?\(&*[a-zA-Z0-9;_+/.\-%]*-*=*[a-zA-Z0-9;_+/.\-%]*-*\)*
(assert (str.in_re X (re.++ (str.to_re "http://(") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-")) (str.to_re "+(.") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-")) (str.to_re "+)+)+:?") (re.range "0" "9") (str.to_re "?(") (re.* (str.to_re "/")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re "#"))) (re.* (str.to_re ".")) (re.* (str.to_re ")")) (str.to_re "?(") (re.* (str.to_re "&")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ";") (str.to_re "_") (str.to_re "+") (str.to_re "/") (str.to_re ".") (str.to_re "-") (str.to_re "%"))) (re.* (str.to_re "-")) (re.* (str.to_re "=")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ";") (str.to_re "_") (str.to_re "+") (str.to_re "/") (str.to_re ".") (str.to_re "-") (str.to_re "%"))) (re.* (str.to_re "-")) (re.* (str.to_re ")")) (str.to_re "\u{a}"))))
; PASSW=\s+\u{2F}ta\u{2F}NEWS\u{2F}.*loomcompany\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/") (re.* re.allchar) (str.to_re "loomcompany.com\u{a}"))))
; e2give\.comADRemoteHost\u{3A}
(assert (not (str.in_re X (str.to_re "e2give.comADRemoteHost:\u{a}"))))
; /filename=[^\n]*\u{2e}fdf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".fdf/i\u{a}"))))
(check-sat)
