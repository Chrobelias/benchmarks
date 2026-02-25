(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "92" y)))

(assert (str.in_re y (re.* (str.to_re "29"))))
(assert (str.in_re x (re.union (re.+ (re.union (re.range "0" "8") (re.range "5" "9"))) (re.range "5" "7"))))

(assert (>= (+ (* (- 7) (str.to_int x)) (* 5 (str.to_int y))) 31))
(assert (<= (+ (* (- 8) (str.len x)) (* (- 6) (str.len y))) 43))

(check-sat)