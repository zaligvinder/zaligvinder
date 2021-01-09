(declare-const X String)
; /css\s*?\x28\s*?[\x22\x27]margin[^\x29]*?[\x22\x27]\s*?\x2c\s*?[\x22\x27]\d{12,}\s*?px/smi
(assert (not (str.in.re X (re.++ (str.to.re "/css") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "margin") (re.* (re.comp (str.to.re ")"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "px/smi\x0a") ((_ re.loop 12 12) (re.range "0" "9")) (re.* (re.range "0" "9"))))))
; /^\/\?[a-f0-9]{32}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; /[?&]filename=[^&]*?\x2e\x2e\x2f/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "?") (str.to.re "&")) (str.to.re "filename=") (re.* (re.comp (str.to.re "&"))) (str.to.re "..//Ui\x0a")))))
(check-sat)
