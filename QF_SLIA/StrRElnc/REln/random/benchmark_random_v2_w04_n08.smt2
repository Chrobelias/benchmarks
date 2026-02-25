(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (re.union (str.to_re "376") (re.range "3" "7")))))
(assert (str.in_re x (re.union (re.* (re.union (str.to_re "75") (str.to_re "2"))) (str.to_re "36"))))

(assert (> (+ (* (- 5) (str.len y)) (* (- 7) (str.to_int x)) (* 6 (str.to_int y))) 65))
(assert (< (+ (- (str.len x)) (* (- 9) (str.len y))) 6))
(assert (= (+ (* (- 2) (str.to_int x)) (* 7 (str.to_int y))) 34))

(check-sat)