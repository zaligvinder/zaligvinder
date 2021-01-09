(declare-const X String)
; User-Agent\x3A\w+Minutes\sHost\x3Awww\x2Eeblocs\x2EcomHost\x3ARunnerHost\x3a\x2Ehtml
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Minutes") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:www.eblocs.com\x1bHost:RunnerHost:.html\x0a")))))
; /\x2fType\x2fXRef\x2fW\x5b[^\x5d]*?\d{7,15}/smi
(assert (str.in.re X (re.++ (str.to.re "//Type/XRef/W[") (re.* (re.comp (str.to.re "]"))) ((_ re.loop 7 15) (re.range "0" "9")) (str.to.re "/smi\x0a"))))
; [^ _0-9a-zA-Z\$\%\'\-\@\{\}\~\!\#\(\)\&\^]
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "_") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "$") (str.to.re "%") (str.to.re "'") (str.to.re "-") (str.to.re "@") (str.to.re "{") (str.to.re "}") (str.to.re "~") (str.to.re "!") (str.to.re "#") (str.to.re "(") (str.to.re ")") (str.to.re "&") (str.to.re "^")) (str.to.re "\x0a")))))
; ^[A-Z0-9\\-\\&-]{5,12}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 12) (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "\x5c" "\x5c") (str.to.re "&") (str.to.re "-"))) (str.to.re "\x0a")))))
; myway\.com\s+SupervisorPalUser-Agent\x3ASearch
(assert (not (str.in.re X (re.++ (str.to.re "myway.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SupervisorPalUser-Agent:Search\x0a")))))
(check-sat)
