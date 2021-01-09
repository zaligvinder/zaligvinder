(declare-const X String)
; (/\*[\d\D]*?\*/)|(\/\*(\s*|.*?)*\*\/)|(\/\/.*)|(/\\*[\\d\\D]*?\\*/)|([\r\n ]*//[^\r\n]*)+
(assert (not (str.in.re X (re.union (re.++ (str.to.re "/*") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to.re "*/")) (re.++ (str.to.re "/*") (re.* (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar))) (str.to.re "*/")) (re.++ (str.to.re "//") (re.* re.allchar)) (re.++ (str.to.re "/") (re.* (str.to.re "\x5c")) (re.* (re.union (str.to.re "\x5c") (str.to.re "d") (str.to.re "D"))) (re.* (str.to.re "\x5c")) (str.to.re "/")) (re.++ (re.+ (re.++ (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " "))) (str.to.re "//") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))))) (str.to.re "\x0a"))))))
; Host\x3A\s+\x2Ftoolbar\x2Fico\x2F\dencoderserverreport\<\x2Ftitle\>
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/") (re.range "0" "9") (str.to.re "encoderserverreport</title>\x0a")))))
; ^[a-zA-Z_]{1}[a-zA-Z0-9_@$#]*$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "@") (str.to.re "$") (str.to.re "#"))) (str.to.re "\x0a")))))
; /\/flash201(3|4)\.php$/U
(assert (str.in.re X (re.++ (str.to.re "//flash201") (re.union (str.to.re "3") (str.to.re "4")) (str.to.re ".php/U\x0a"))))
(check-sat)
