(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ "85" y)))

(assert (str.in_re y (re.union (re.union (re.+ (str.to_re "23")) (str.to_re "76")) (str.to_re "83"))))
(assert (str.in_re x (re.+ (re.range "2" "8"))))

(assert (= (+ (* 3 (str.len x)) (* 3 (str.to_int y))) 99))

(check-sat)