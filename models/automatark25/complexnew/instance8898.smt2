(declare-const X String)
; /filename=[^\n]*\x2ek3g/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".k3g/i\x0a")))))
; /\.getElements?By(Id|TagName)\x28\s*[\x22\x27]caption[\x22\x27]\s*\x29.*?innerHTML\s*\x3d\s*[\x22\x27]\x3cthead/sm
(assert (not (str.in.re X (re.++ (str.to.re "/.getElement") (re.opt (str.to.re "s")) (str.to.re "By") (re.union (str.to.re "Id") (str.to.re "TagName")) (str.to.re "(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "caption") (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ")") (re.* re.allchar) (str.to.re "innerHTML") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "<thead/sm\x0a")))))
; (\'([^\'\\]*\\.)*[^\'\\]*\')+
(assert (not (str.in.re X (re.++ (re.+ (re.++ (str.to.re "'") (re.* (re.++ (re.* (re.union (str.to.re "'") (str.to.re "\x5c"))) (str.to.re "\x5c") re.allchar)) (re.* (re.union (str.to.re "'") (str.to.re "\x5c"))) (str.to.re "'"))) (str.to.re "\x0a")))))
; ((^[0-9]*).?((BIS)|(TER)|(QUATER))?)?((\W+)|(^))(([a-z]+.)*)([0-9]{5})?.(([a-z\'']+.)*)$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.* (re.range "0" "9")) (re.opt re.allchar) (re.opt (re.union (str.to.re "BIS") (str.to.re "TER") (str.to.re "QUATER"))))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.* (re.++ (re.+ (re.range "a" "z")) re.allchar)) (re.opt ((_ re.loop 5 5) (re.range "0" "9"))) re.allchar (re.* (re.++ (re.+ (re.union (re.range "a" "z") (str.to.re "'"))) re.allchar)) (str.to.re "\x0a"))))
; www\x2eproventactics\x2ecom\s+
(assert (str.in.re X (re.++ (str.to.re "www.proventactics.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
