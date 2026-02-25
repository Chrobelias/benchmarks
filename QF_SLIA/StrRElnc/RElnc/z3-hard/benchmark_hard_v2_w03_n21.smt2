(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "48" y)))

(assert (str.in_re y (re.++ (re.+ (str.to_re "747")) (str.to_re "475"))))
(assert (str.in_re x (re.union (re.* (re.range "4" "8")) (re.* (str.to_re "53")))))

(assert (<= (+ (* 4 (str.len x)) (* (- 9) (str.len y))) 22))
(assert (> (+ (* 10 (str.len x)) (* (- 5) (str.to_int y))) 97))

(check-sat)