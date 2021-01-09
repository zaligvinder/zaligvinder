(declare-const X String)
; Host\x3a\dATTENTION\x3A.*User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "ATTENTION:") (re.* re.allchar) (str.to.re "User-Agent:\x0a")))))
; /appendChild\x28\s*document\x2ecreateElement\x28\s*[\x22\x27]button[\x22\x27].*?outerText\s*=\s*[\x22\x27]{2}/smi
(assert (str.in.re X (re.++ (str.to.re "/appendChild(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "document.createElement(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "button") (re.union (str.to.re "\x22") (str.to.re "'")) (re.* re.allchar) (str.to.re "outerText") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/smi\x0a"))))
; /filename=[^\n]*\x2ef4a/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4a/i\x0a"))))
; /^[0-9]+\.d{3}? *$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (str.to.re "d")) (re.* (str.to.re " ")) (str.to.re "/\x0a"))))
; /\x00{7}\x55\x00{3}\x21.{4}[^\x00]*?[\x22\x27\x29\x3b]/
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 7 7) (str.to.re "\x00")) (str.to.re "U") ((_ re.loop 3 3) (str.to.re "\x00")) (str.to.re "!") ((_ re.loop 4 4) re.allchar) (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ")") (str.to.re ";")) (str.to.re "/\x0a")))))
(check-sat)
