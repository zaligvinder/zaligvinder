(declare-const X String)
; forum=\s+\x2Ftoolbar\x2Fico\x2F
(assert (not (str.in.re X (re.++ (str.to.re "forum=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/\x0a")))))
; .*[\$Ss]pecia[l1]\W[Oo0]ffer.*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "$") (str.to.re "S") (str.to.re "s")) (str.to.re "pecia") (re.union (str.to.re "l") (str.to.re "1")) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re "O") (str.to.re "o") (str.to.re "0")) (str.to.re "ffer") (re.* re.allchar) (str.to.re "\x0a")))))
; cyber@yahoo\x2Ecom\s+WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (re.++ (str.to.re "cyber@yahoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WindowsAttachedPalas.starware.com/dp/search?x=\x0a"))))
; <[iI][mM][gG]([^>]*[^/>]*[/>]*[>])
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "g") (str.to.re "G")) (str.to.re "\x0a") (re.* (re.comp (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (str.to.re ">")))))
; /SOAPAction\x3A\s*?\x22[^\x22\x23]+?\x23([^\x22]{2048}|[^\x22]+$)/Hsi
(assert (not (str.in.re X (re.++ (str.to.re "/SOAPAction:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22") (re.+ (re.union (str.to.re "\x22") (str.to.re "#"))) (str.to.re "#") (re.union ((_ re.loop 2048 2048) (re.comp (str.to.re "\x22"))) (re.+ (re.comp (str.to.re "\x22")))) (str.to.re "/Hsi\x0a")))))
(check-sat)
