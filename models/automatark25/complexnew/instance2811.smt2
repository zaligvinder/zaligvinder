(declare-const X String)
; http://\([a-zA-Z0-9_\-]\+\(\.[a-zA-Z0-9_\-]\+\)\+\)\+:\?[0-9]\?\(/*[a-zA-Z0-9_\-#]*\.*\)*?\?\(&*[a-zA-Z0-9;_+/.\-%]*-*=*[a-zA-Z0-9;_+/.\-%]*-*\)*
(assert (str.in.re X (re.++ (str.to.re "http://(") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-")) (str.to.re "+(.") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-")) (str.to.re "+)+)+:?") (re.range "0" "9") (str.to.re "?(") (re.* (str.to.re "/")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "#"))) (re.* (str.to.re ".")) (re.* (str.to.re ")")) (str.to.re "?(") (re.* (str.to.re "&")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ";") (str.to.re "_") (str.to.re "+") (str.to.re "/") (str.to.re ".") (str.to.re "-") (str.to.re "%"))) (re.* (str.to.re "-")) (re.* (str.to.re "=")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ";") (str.to.re "_") (str.to.re "+") (str.to.re "/") (str.to.re ".") (str.to.re "-") (str.to.re "%"))) (re.* (str.to.re "-")) (re.* (str.to.re ")")) (str.to.re "\x0a"))))
; ^(s-|S-){0,1}[0-9]{3}\s?[0-9]{2}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "s-") (str.to.re "S-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[1-9][0-9]{0,6}(|.[0-9]{1,2}|,[0-9]{1,2})?
(assert (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 0 6) (re.range "0" "9")) (re.opt (re.union (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to.re ",") ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to.re "\x0a"))))
; toolbar_domain_redirectlibManager\x2Edll\x5Eget
(assert (str.in.re X (str.to.re "toolbar_domain_redirectlibManager.dll^get\x0a")))
; /\x2eexe([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.exe") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
