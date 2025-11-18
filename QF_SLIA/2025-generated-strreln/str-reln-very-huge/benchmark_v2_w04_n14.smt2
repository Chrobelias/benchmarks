(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.+ (re.union (str.to_re "135") (re.range "5" "9")))))
(assert (str.in_re y (re.union (str.to_re "251") (re.++ (re.* (str.to_re "155")) (re.range "2" "4")))))

(assert (> (+ (* 9 (str.len x)) (* (- 2) (str.len y))) 62))
(assert (< (+ (* (- 2) (str.to_int x)) (- (str.to_int y))) 42))
(assert (< (+ (* (- 9) (str.len y)) (* 6 (str.to_int x))) 22))

(check-sat)