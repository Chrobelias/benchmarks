(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.union (re.union (re.+ (str.to_re "47")) (re.range "3" "9")) (str.to_re "166"))))
(assert (str.in_re z (re.union (str.to_re "95") (re.union (re.* (str.to_re "1")) (re.+ (str.to_re "542"))))))
(assert (str.in_re x (re.++ (str.to_re "24") (re.union (str.to_re "20") (re.+ (re.* (str.to_re "86")))))))
(assert (str.in_re a (re.+ (re.union (re.++ (str.to_re "195") (str.to_re "16")) (str.to_re "68")))))

(assert (= (+ (* 6 (str.len x)) (* 4 (str.len y)) (* (- 4) (str.len z)) (* (- 3) (str.len a))) 29))
(assert (= (+ (* (- 3) (str.to_int x)) (* 4 (str.to_int y)) (* 8 (str.to_int z)) (str.to_int a)) 31))

(check-sat)