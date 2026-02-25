(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "66" y)))

(assert (str.in_re y (re.union (re.* (re.range "6" "8")) (re.union (re.range "5" "8") (str.to_re "18")))))
(assert (str.in_re x (re.+ (re.range "5" "7"))))

(assert (= (+ (* 5 (str.len x)) (* (- 3) (str.len y))) 73))
(assert (>= (+ (* 7 (str.to_int x)) (* (- 5) (str.to_int y))) 3))

(check-sat)