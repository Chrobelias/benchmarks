(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "86" x)))

(assert (str.in_re y (re.* (re.union (re.+ (str.to_re "63")) (re.range "0" "8")))))
(assert (str.in_re x (re.* (re.++ (str.to_re "564") (str.to_re "5")))))

(assert (<= (+ (* (- 6) (str.len x)) (str.len y) (* 8 (str.to_int x))) 9))

(check-sat)