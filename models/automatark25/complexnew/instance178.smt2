(declare-const X String)
; (\[[Ii][Mm][Gg]\])(\S+?)(\[\/[Ii][Mm][Gg]\])
(assert (not (str.in.re X (re.++ (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a[") (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "M") (str.to.re "m")) (re.union (str.to.re "G") (str.to.re "g")) (str.to.re "][/") (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "M") (str.to.re "m")) (re.union (str.to.re "G") (str.to.re "g")) (str.to.re "]")))))
; Host\x3a\dOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "OVNUsertooffers.bullseye-network.com\x0a"))))
; \x2Fcbn\x2F\s+Host\x3Abinde2give\.com
(assert (str.in.re X (re.++ (str.to.re "/cbn/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:binde2give.com\x0a"))))
; ^[-\w\s"'=/!@#%&,;:`~\.\$\^\{\[\(\|\)\]\}\*\+\?\\]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "-") (str.to.re "\x22") (str.to.re "'") (str.to.re "=") (str.to.re "/") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "%") (str.to.re "&") (str.to.re ",") (str.to.re ";") (str.to.re ":") (str.to.re "`") (str.to.re "~") (str.to.re ".") (str.to.re "$") (str.to.re "^") (str.to.re "{") (str.to.re "[") (str.to.re "(") (str.to.re "|") (str.to.re ")") (str.to.re "]") (str.to.re "}") (str.to.re "*") (str.to.re "+") (str.to.re "?") (str.to.re "\x5c") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
