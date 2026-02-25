(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "38" y)))

(assert (str.in_re x (re.+ (re.++ (re.range "1" "4") (re.* (re.range "7" "9"))))))
(assert (str.in_re y (re.++ (re.union (re.* (str.to_re "468")) (re.* (str.to_re "751"))) (re.range "4" "8"))))

(assert (= (+ (* 7 (str.len y)) (* (- 5) (str.to_int x)) (* 9 (str.to_int y))) 89))
(assert (< (+ (* (- 5) (str.len x)) (* 5 (str.to_int x))) 33))

(check-sat)