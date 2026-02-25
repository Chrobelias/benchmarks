(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "866")) (re.union (re.range "7" "9") (str.to_re "4")))))
(assert (str.in_re y (re.union (re.+ (re.++ (str.to_re "25") (str.to_re "123"))) (str.to_re "638"))))

(assert (> (+ (- (str.len y)) (* (- 10) (str.to_int x))) 29))
(assert (>= (* 4 (str.len x)) 32))
(assert (>= (+ (* 3 (str.to_int x)) (* (- 6) (str.to_int y))) 39))

(check-sat)