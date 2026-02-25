(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "42" x)))

(assert (str.in_re x (re.++ (str.to_re "465") (re.* (re.union (re.+ (str.to_re "678")) (str.to_re "939"))))))
(assert (str.in_re y (re.* (re.range "1" "9"))))

(assert (<= (+ (* 2 (str.len y)) (* 2 (str.to_int x))) 78))
(assert (< (+ (* 8 (str.to_int x)) (* (- 3) (str.to_int y))) 99))
(assert (< (+ (* (- 7) (str.len x)) (* 6 (str.len y))) 3))

(check-sat)