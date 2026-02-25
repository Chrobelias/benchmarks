(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "66" y)))

(assert (str.in_re y (re.* (re.+ (re.union (str.to_re "36") (re.+ (str.to_re "58")))))))
(assert (str.in_re x (re.* (re.range "1" "8"))))

(assert (= (+ (* (- 2) (str.len y)) (* 9 (str.to_int y))) 81))

(check-sat)