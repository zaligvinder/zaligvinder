(declare-const X String)
; /RegExp?\x23.{0,5}\x28\x3f[^\x29]{0,4}i.*?\x28\x3f\x2d[^\x29]{0,4}i.{0,50}\x7c\x7c/smi
(assert (str.in.re X (re.++ (str.to.re "/RegEx") (re.opt (str.to.re "p")) (str.to.re "#") ((_ re.loop 0 5) re.allchar) (str.to.re "(?") ((_ re.loop 0 4) (re.comp (str.to.re ")"))) (str.to.re "i") (re.* re.allchar) (str.to.re "(?-") ((_ re.loop 0 4) (re.comp (str.to.re ")"))) (str.to.re "i") ((_ re.loop 0 50) re.allchar) (str.to.re "||/smi\x0a"))))
; Ready\s+Eye.*http\x3A\x2F\x2Fsupremetoolbar
(assert (not (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Eye") (re.* re.allchar) (str.to.re "http://supremetoolbar\x0a")))))
; ([A-Za-z0-9.]+\s*)+,
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "."))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re ",\x0a"))))
(check-sat)
