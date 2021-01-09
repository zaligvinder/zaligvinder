(declare-const X String)
; /filename=[^\n]*\x2ertf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rtf/i\x0a"))))
; /mJKV[^\s\x0D\x0A]+1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U
(assert (not (str.in.re X (re.++ (str.to.re "/mJKV") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U\x0a")))))
; ^[ a - z, 0 - 9 , ?   -   ?   ,?   -   ? , ?    -  ?   ,?   -  ? , . ]
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "a") (re.range " " " ") (str.to.re "z") (str.to.re ",") (str.to.re "0") (str.to.re "9") (str.to.re "?") (str.to.re ".")) (str.to.re "\x0a"))))
(check-sat)
