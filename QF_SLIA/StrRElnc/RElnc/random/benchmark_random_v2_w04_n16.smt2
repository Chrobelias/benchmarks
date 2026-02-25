(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "25" y)))

(assert (str.in_re y (re.union (str.to_re "78") (re.+ (re.* (str.to_re "40"))))))
(assert (str.in_re x (re.+ (re.range "2" "9"))))

(assert (<= (+ (* (- 10) (str.len x)) (* (- 2) (str.len y))) 23))
(assert (= (+ (* (- 3) (str.len x)) (* 6 (str.len y))) 17))
(assert (= (+ (* (- 4) (str.len x)) (* 9 (str.len y))) 12))
(assert (< (+ (- (str.to_int x)) (* (- 6) (str.to_int y))) 31))

(check-sat)