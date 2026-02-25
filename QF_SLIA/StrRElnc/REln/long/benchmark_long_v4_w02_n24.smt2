(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len a) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re a (re.* (re.range "1" "8"))))
(assert (str.in_re z (re.++ (str.to_re "833") (re.* (re.++ (str.to_re "8") (re.+ (str.to_re "984")))))))
(assert (str.in_re y (re.++ (str.to_re "81") (re.* (re.+ (re.range "2" "6"))))))
(assert (str.in_re x (re.union (re.* (str.to_re "243")) (re.union (str.to_re "6") (str.to_re "363")))))

(assert (= (+ (* (- 4) (str.len z)) (* 9 (str.to_int y))) 46))

(check-sat)