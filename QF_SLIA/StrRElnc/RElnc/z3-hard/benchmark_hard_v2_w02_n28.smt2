(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "67" y)))

(assert (str.in_re y (re.+ (str.to_re "29"))))
(assert (str.in_re x (re.+ (re.union (re.range "5" "9") (re.+ (re.* (re.range "0" "6")))))))

(assert (<= (+ (* (- 10) (str.len x)) (* 9 (str.len y))) 98))
(assert (> (+ (* (- 6) (str.to_int x)) (* 4 (str.to_int y))) 34))

(check-sat)