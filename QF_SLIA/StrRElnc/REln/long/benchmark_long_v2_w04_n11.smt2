(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.* (str.to_re "68"))))
(assert (str.in_re y (re.union (str.to_re "68") (re.++ (str.to_re "35") (re.+ (re.range "5" "9"))))))

(assert (= (+ (* (- 10) (str.len x)) (* (- 5) (str.len y))) 77))
(assert (<= (+ (* (- 2) (str.len x)) (* (- 6) (str.len y))) 11))
(assert (<= (+ (* 8 (str.len x)) (* 8 (str.len y))) 99))
(assert (< (+ (- (str.to_int x)) (* (- 5) (str.to_int y))) 24))

(check-sat)