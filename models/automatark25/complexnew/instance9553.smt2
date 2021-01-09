(declare-const X String)
; ^(([^,\n]+),([^,\n]+),([^@]+)@([^\.]+)\.([^,\n]+)\n)+([^,\n]+),([^,\n]+),([^@]+)@([^\.]+)\.([^,\n]+)\n?$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (str.to.re ",") (str.to.re "\x0a"))) (str.to.re ",") (re.+ (re.union (str.to.re ",") (str.to.re "\x0a"))) (str.to.re ",") (re.+ (re.comp (str.to.re "@"))) (str.to.re "@") (re.+ (re.comp (str.to.re "."))) (str.to.re ".") (re.+ (re.union (str.to.re ",") (str.to.re "\x0a"))) (str.to.re "\x0a"))) (re.+ (re.union (str.to.re ",") (str.to.re "\x0a"))) (str.to.re ",") (re.+ (re.union (str.to.re ",") (str.to.re "\x0a"))) (str.to.re ",") (re.+ (re.comp (str.to.re "@"))) (str.to.re "@") (re.+ (re.comp (str.to.re "."))) (str.to.re ".") (re.+ (re.union (str.to.re ",") (str.to.re "\x0a"))) (re.opt (str.to.re "\x0a")) (str.to.re "\x0a"))))
; ([0-9]{4})-([0-9]{1,2})-([0-9]{1,2})
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
