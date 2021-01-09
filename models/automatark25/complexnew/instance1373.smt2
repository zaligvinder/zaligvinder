(declare-const X String)
; ^(([a-h,A-H,j-n,J-N,p-z,P-Z,0-9]{9})([a-h,A-H,j-n,J-N,p,P,r-t,R-T,v-z,V-Z,0-9])([a-h,A-H,j-n,J-N,p-z,P-Z,0-9])(\d{6}))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 9 9) (re.union (re.range "a" "h") (str.to.re ",") (re.range "A" "H") (re.range "j" "n") (re.range "J" "N") (re.range "p" "z") (re.range "P" "Z") (re.range "0" "9"))) (re.union (re.range "a" "h") (str.to.re ",") (re.range "A" "H") (re.range "j" "n") (re.range "J" "N") (str.to.re "p") (str.to.re "P") (re.range "r" "t") (re.range "R" "T") (re.range "v" "z") (re.range "V" "Z") (re.range "0" "9")) (re.union (re.range "a" "h") (str.to.re ",") (re.range "A" "H") (re.range "j" "n") (re.range "J" "N") (re.range "p" "z") (re.range "P" "Z") (re.range "0" "9")) ((_ re.loop 6 6) (re.range "0" "9")))))
; Filtered\s+Yeah\!\d+HXDownloadasdbiz\x2EbizUser-Agent\x3Awww\x2Eezula\x2EcomUser-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (not (str.in.re X (re.++ (str.to.re "Filtered") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Yeah!") (re.+ (re.range "0" "9")) (str.to.re "HXDownloadasdbiz.bizUser-Agent:www.ezula.comUser-Agent:etbuviaebe/eqv.bvv\x0a")))))
; /^\x2f[a-z\x2d\x5f]{90,97}\.php$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 90 97) (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_"))) (str.to.re ".php/U\x0a"))))
; /filename=[^\n]*\x2exlsx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xlsx/i\x0a")))))
; ^(((\\\\([^\\/:\*\?"\|<>\. ]+))|([a-zA-Z]:\\))(([^\\/:\*\?"\|<>\. ]*)([\\]*))*)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "\x5c\x5c") (re.+ (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re ".") (str.to.re " ")))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":\x5c"))) (re.* (re.++ (re.* (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re ".") (str.to.re " "))) (re.* (str.to.re "\x5c"))))))))
(check-sat)
