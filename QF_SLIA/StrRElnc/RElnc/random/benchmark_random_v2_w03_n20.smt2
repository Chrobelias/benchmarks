(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "32" y) (str.++ x "28")))

(assert (str.in_re y (re.+ (re.union (str.to_re "76") (re.union (str.to_re "42") (re.+ (re.range "4" "8")))))))
(assert (str.in_re x (re.union (re.+ (re.range "2" "9")) (str.to_re "453"))))

(assert (< (+ (* (- 9) (str.len x)) (str.len y)) 77))
(assert (< (+ (* 5 (str.len x)) (* 10 (str.to_int x))) 90))

(check-sat)