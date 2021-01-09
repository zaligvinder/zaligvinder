(declare-const X String)
; Admin\s+daosearch\x2EcomMyPostwww\.raxsearch\.comref\x3D\x25user\x5Fid
(assert (str.in.re X (re.++ (str.to.re "Admin") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "daosearch.comMyPostwww.raxsearch.comref=%user_id\x0a"))))
(check-sat)
