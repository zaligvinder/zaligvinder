(declare-const X String)
; /filename=[^\n]*\x2ewma/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wma/i\x0a")))))
; ^[A-Z0-9a-z'&()/]{0,1}[A-Z0-9a-z'&()/]{0,1}(([A-Z0-9a-z'&()/_-])|(\\s)){0,47}[A-Z0-9a-z'&()/]{1}$
(assert (str.in.re X (re.++ (re.opt (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) (re.opt (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) ((_ re.loop 0 47) (re.union (str.to.re "\x5cs") (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/") (str.to.re "_") (str.to.re "-"))) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) (str.to.re "\x0a"))))
; ([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|(\d{1,3}\.){3}\d{1,3}
(assert (str.in.re X (re.union (re.++ ((_ re.loop 7 7) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to.re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; /(A|B|AB|O)[+-]/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "A") (str.to.re "B") (str.to.re "AB") (str.to.re "O")) (re.union (str.to.re "+") (str.to.re "-")) (str.to.re "/\x0a")))))
(check-sat)
