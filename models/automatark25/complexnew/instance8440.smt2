(declare-const X String)
; \b[A-z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "A" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "%") (str.to.re "-"))) (str.to.re "@") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 2 4) (re.range "A" "Z")) (str.to.re "\x0a"))))
; ^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w ]*))+\.(txt|TXT)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":")) (re.++ (re.opt (str.to.re "$")) ((_ re.loop 2 2) (str.to.re "\x5c")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (re.+ (re.++ (str.to.re "\x5c") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.* (re.union (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re ".") (re.union (str.to.re "txt") (str.to.re "TXT")) (str.to.re "\x0a")))))
(check-sat)
