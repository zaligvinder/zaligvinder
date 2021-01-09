(declare-const X String)
; [a-zA-Z_:][a-zA-Z0-9_,\.\-]*?
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re ":")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (str.to.re "\x0a")))))
; (\d{3}\-\d{2}\-\d{4})
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))))))
; ([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|(\d{1,3}\.){3}\d{1,3}
(assert (str.in.re X (re.union (re.++ ((_ re.loop 7 7) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to.re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; ((X|x):-?(180(\.0+)?|[0-1]?[0-7]?[0-9](\.\d+)?))([ ]|,)*((Y|y):-?(90(\.0+)?|[0-8]?[0-9](\.\d+)?))
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re ","))) (str.to.re "\x0a") (re.union (str.to.re "X") (str.to.re "x")) (str.to.re ":") (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "180") (re.opt (re.++ (str.to.re ".") (re.+ (str.to.re "0"))))) (re.++ (re.opt (re.range "0" "1")) (re.opt (re.range "0" "7")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))) (re.union (str.to.re "Y") (str.to.re "y")) (str.to.re ":") (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "90") (re.opt (re.++ (str.to.re ".") (re.+ (str.to.re "0"))))) (re.++ (re.opt (re.range "0" "8")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))))))
(check-sat)
