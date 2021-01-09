(declare-const X String)
; ^(\d|,)*\d*$
(assert (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ")")) (re.opt (re.union (str.to.re ".") (str.to.re "|") (str.to.re " ") (str.to.re "-")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "|") (str.to.re "-") (str.to.re " ")))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[-+]?(\d?\d?\d?,?)?(\d{3}\,?)*(\.?\d+)$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.opt (re.++ (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (str.to.re ",")))) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ",")))) (str.to.re "\x0a") (re.opt (str.to.re ".")) (re.+ (re.range "0" "9"))))))
; \d{2,4}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; </?(\w+)(\s*\w*\s*=\s*("[^"]*"|';[^';]';|[^>]*))*|/?>
(assert (str.in.re X (re.union (re.++ (str.to.re "<") (re.opt (str.to.re "/")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (str.to.re "';") (re.union (str.to.re "'") (str.to.re ";")) (str.to.re "';")) (re.* (re.comp (str.to.re ">"))))))) (re.++ (re.opt (str.to.re "/")) (str.to.re ">\x0a")))))
(check-sat)
