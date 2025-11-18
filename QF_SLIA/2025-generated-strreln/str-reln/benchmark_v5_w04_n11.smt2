(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.++ (re.+ (re.range "3" "7")) (str.to_re "71"))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "3") (re.union (str.to_re "156") (str.to_re "507"))))))
(assert (str.in_re z (re.+ (re.+ (re.++ (str.to_re "282") (str.to_re "52"))))))
(assert (str.in_re a (re.+ (re.range "4" "8"))))
(assert (str.in_re b (re.+ (re.++ (str.to_re "756") (str.to_re "292")))))

(assert (> (+ (* (- 4) (str.len x)) (- (str.len z)) (* 8 (str.to_int x))) 33))
(assert (>= (+ (* 4 (str.len x)) (* 4 (str.len z)) (* 6 (str.len b)) (* (- 10) (str.to_int x)) (* (- 6) (str.to_int y))) 95))

(check-sat)