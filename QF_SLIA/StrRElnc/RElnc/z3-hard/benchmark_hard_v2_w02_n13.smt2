(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "62" x)))

(assert (str.in_re x (re.* (re.union (str.to_re "9") (re.+ (str.to_re "3"))))))
(assert (str.in_re y (re.* (re.range "0" "8"))))

(assert (>= (+ (* 9 (str.len x)) (* 3 (str.len y))) 84))
(assert (= (+ (* 9 (str.to_int x)) (* (- 2) (str.to_int y))) 86))

(check-sat)