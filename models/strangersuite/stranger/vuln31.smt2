(declare-fun var60 () String)
(declare-fun var62 () String)
(declare-fun var63 () String)
(declare-fun var65 () String)
(declare-fun var66 () String)
(declare-fun var67 () String)
(declare-fun var68 () String)
(declare-fun var69 () String)
(declare-fun var70 () String)
(declare-fun var71 () String)
(declare-fun var72 () String)
(declare-fun var73 () String)
(declare-fun var75 () String)
(declare-fun var76 () String)
(declare-fun var77 () String)
(declare-fun var78 () Int)
(declare-fun var80 () String)
(declare-fun var81 () Int)
(declare-fun var85 () String)
(declare-fun var86 () String)
(declare-fun var88 () String)
(declare-fun var90 () String)
(declare-fun var91 () String)
(declare-fun var92 () String)
(declare-fun var93 () String)
(declare-fun var95 () String)
(declare-fun var97 () String)
(declare-fun var99 () String)
(declare-fun var101 () String)
(declare-fun var102 () String)
(declare-fun var104 () String)
(declare-fun var106 () String)
(declare-fun var108 () String)
(declare-fun var110 () String)
(declare-fun var113 () String)
(declare-fun var112 () String)
(declare-fun var114 () Int)

(assert (str.in.re var110  (re.union  (re.++  (str.to.re "\x5c\x3c") (re.++ (re.*  (str.to.re "\x20") ) (re.++  (re.union  (str.to.re "\x53")  (str.to.re "\x73")) (re.++  (re.union  (str.to.re "\x43")  (str.to.re "\x63")) (re.++  (re.union  (str.to.re "\x52")  (str.to.re "\x72")) (re.++  (re.union  (str.to.re "\x49")  (str.to.re "\x69")) (re.++  (re.union  (str.to.re "\x50")  (str.to.re "\x70")) (re.++  (re.union  (str.to.re "\x54")  (str.to.re "\x74")) (re.++ (re.*  (str.to.re "\x20") ) (re.++  (str.to.re "\x5c\x3e") (re.++ (re.+  (re.union (re.range "\x61" "\x7a") (re.union (re.range "\x41" "\x5a") (re.union (re.range "\x30" "\x39") (re.union  (str.to.re "\x5c\x28") (re.union  (str.to.re "\x5c\x29")  (str.to.re "\x3b")))))) ) (re.++  (str.to.re "\x5c\x3c") (re.++  (str.to.re "\x2f") (re.++ (re.*  (str.to.re "\x20") ) (re.++  (re.union  (str.to.re "\x53")  (str.to.re "\x73")) (re.++  (re.union  (str.to.re "\x43")  (str.to.re "\x63")) (re.++  (re.union  (str.to.re "\x52")  (str.to.re "\x72")) (re.++  (re.union  (str.to.re "\x49")  (str.to.re "\x69")) (re.++  (re.union  (str.to.re "\x50")  (str.to.re "\x70")) (re.++  (re.union  (str.to.re "\x54")  (str.to.re "\x74")) (re.++  (str.to.re "\x20")  (str.to.re "\x5c\x3e"))))))))))))))))))))))  (re.++  (str.to.re "\x5c\x3c") (re.++ (re.*  (str.to.re "\x20") ) (re.++  (re.union  (str.to.re "\x49")  (str.to.re "\x69")) (re.++  (re.union  (str.to.re "\x4d")  (str.to.re "\x6d")) (re.++  (re.union  (str.to.re "\x47")  (str.to.re "\x67")) (re.++  (str.to.re "\x20") (re.++  (re.union  (str.to.re "\x53")  (str.to.re "\x73")) (re.++  (re.union  (str.to.re "\x52")  (str.to.re "\x72")) (re.++  (re.union  (str.to.re "\x43")  (str.to.re "\x63")) (re.++  (str.to.re "\x3d") (re.++  (re.union  (str.to.re "\x4a")  (str.to.re "\x6a")) (re.++  (re.union  (str.to.re "\x41")  (str.to.re "\x61")) (re.++  (re.union  (str.to.re "\x56")  (str.to.re "\x76")) (re.++  (re.union  (str.to.re "\x41")  (str.to.re "\x61")) (re.++  (re.union  (str.to.re "\x53")  (str.to.re "\x73")) (re.++  (re.union  (str.to.re "\x43")  (str.to.re "\x63")) (re.++  (re.union  (str.to.re "\x52")  (str.to.re "\x72")) (re.++  (re.union  (str.to.re "\x49")  (str.to.re "\x69")) (re.++  (re.union  (str.to.re "\x50")  (str.to.re "\x70")) (re.++  (re.union  (str.to.re "\x54")  (str.to.re "\x74")) (re.++  (str.to.re "\x3a") (re.++ (re.+  (re.union (re.range "\x61" "\x7a") (re.union (re.range "\x41" "\x5a") (re.union (re.range "\x30" "\x39") (re.union  (str.to.re "\x5c\x28") (re.union  (str.to.re "\x5c\x29")  (str.to.re "\x3b")))))) ) (re.++ (re.*  (str.to.re "\x20") )  (str.to.re "\x5c\x3e"))))))))))))))))))))))))) ) )
(assert (= var60 var62 ) )
(assert (= var62 (str.++ var63 "\x3c/FONT\x3e\x3c/TD\x3e\x3c/TR\x3e" ) ) )
(assert (= var63 (str.++ var65 var66 ) ) )
(assert (= var65 (str.++ var67 var68 ) ) )
(assert (= var67 (str.++ var69 var70 ) ) )
(assert (= var69 (str.++ var71 var72 ) ) )
(assert (= var71 (str.++ var73 "\x3c/TD\x3e\x3cTD STYLE=TEXT\x2dALIGN:right;\x3e\x3cFONT SIZE=1\x3e" ) ) )
(assert (= var73 (str.++ var75 var76 ) ) )
(assert (or (= var72 var76 ) (= var72 var77 ) ) )
(assert (not (= var78 0 )) )
(assert (or (= var70 var80 ) (= var70 var76 ) ) )
(assert (not (= var81 0 )) )
(assert (= var66 var85 ) )
(assert (= var85 (str.++ var86 "\x22\x3e\x3c/A\x3e\x26nbsp;" ) ) )
(assert (= var86 (str.++ var88 "delete" ) ) )
(assert (= var88 (str.++ var90 var91 ) ) )
(assert (= var91 var92 ) )
(assert (= var92 (str.++ var93 "BORDER=0 ALT=\x22" ) ) )
(assert (= var93 (str.++ var95 "http://localhost/delbut\x2epng" ) ) )
(assert (= var95 (str.++ var97 "SRC=" ) ) )
(assert (= var97 (str.++ var99 "\x3e\x3cIMG" ) ) )
(assert (= var99 (str.++ var101 var76 ) ) )
(assert (= var101 (str.++ var102 "\x3faction=delete\x26id=" ) ) )
(assert (= var102 (str.++ var104 "pblguestbook\x2ephp" ) ) )
(assert (= var104 (str.++ var106 "; HREF=" ) ) )
(assert (= var106 (str.++ var108 "blue" ) ) )
(assert (= var108 (str.++ var110 "\x26nbsp;\x3cA STYLE=COLOR:" ) ) )
(assert (or (= var68 var113 ) (= var68 var112 ) ) )
(assert (not (= var114 0 )) )

(check-sat)
