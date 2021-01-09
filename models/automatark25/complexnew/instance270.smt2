(declare-const X String)
; %[\-\+0\s\#]{0,1}(\d+){0,1}(\.\d+){0,1}[hlI]{0,1}[cCdiouxXeEfgGnpsS]{1}
(assert (str.in.re X (re.++ (str.to.re "%") (re.opt (re.union (str.to.re "-") (str.to.re "+") (str.to.re "0") (str.to.re "#") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (re.opt (re.union (str.to.re "h") (str.to.re "l") (str.to.re "I"))) ((_ re.loop 1 1) (re.union (str.to.re "c") (str.to.re "C") (str.to.re "d") (str.to.re "i") (str.to.re "o") (str.to.re "u") (str.to.re "x") (str.to.re "X") (str.to.re "e") (str.to.re "E") (str.to.re "f") (str.to.re "g") (str.to.re "G") (str.to.re "n") (str.to.re "p") (str.to.re "s") (str.to.re "S"))) (str.to.re "\x0a"))))
; ^A([0-9]|10)$
(assert (str.in.re X (re.++ (str.to.re "A") (re.union (re.range "0" "9") (str.to.re "10")) (str.to.re "\x0a"))))
; [^ _0-9a-zA-Z\$\%\'\-\@\{\}\~\!\#\(\)\&\^]
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "_") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "$") (str.to.re "%") (str.to.re "'") (str.to.re "-") (str.to.re "@") (str.to.re "{") (str.to.re "}") (str.to.re "~") (str.to.re "!") (str.to.re "#") (str.to.re "(") (str.to.re ")") (str.to.re "&") (str.to.re "^")) (str.to.re "\x0a"))))
; MailerHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "MailerHost:User-Agent:\x0a"))))
; ([^\w]+)|([^A-Za-z])|(\b[^aeiouy]+\b)|(\b(\w{2})\b)
(assert (str.in.re X (re.union (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u") (str.to.re "y"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")) (re.range "A" "Z") (re.range "a" "z"))))
(check-sat)
