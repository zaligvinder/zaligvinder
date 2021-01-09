(declare-const X String)
; (1 )?\d{3} \d{3}-\d{4}
(assert (str.in.re X (re.++ (re.opt (str.to.re "1 ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[-\w`~!@#$%^&*\(\)+={}|\[\]\\:";'<>?,.\/ ]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "-") (str.to.re "`") (str.to.re "~") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "^") (str.to.re "&") (str.to.re "*") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "=") (str.to.re "{") (str.to.re "}") (str.to.re "|") (str.to.re "[") (str.to.re "]") (str.to.re "\x5c") (str.to.re ":") (str.to.re "\x22") (str.to.re ";") (str.to.re "'") (str.to.re "<") (str.to.re ">") (str.to.re "?") (str.to.re ",") (str.to.re ".") (str.to.re "/") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; CH\d{2}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{1}|CH\d{19}
(assert (not (str.in.re X (re.++ (str.to.re "CH") (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 19 19) (re.range "0" "9")) (str.to.re "\x0a")))))))
; /filename=[^\n]*\x2eexe/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".exe/i\x0a")))))
(check-sat)
