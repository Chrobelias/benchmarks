(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "101") (str.to_re "26")))))
(assert (str.in_re y (re.++ (str.to_re "204") (re.+ (str.to_re "472")))))

(assert (< (+ (- (str.len y)) (* 3 (str.to_int x))) 2))
(assert (= (+ (* (- 3) (str.len x)) (* 5 (str.len y))) 77))

(check-sat)