(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (str.to_re "25") (re.++ (str.to_re "487") (re.union (re.range "5" "9") (re.+ (str.to_re "85")))))))
(assert (str.in_re y (re.union (re.* (str.to_re "71")) (str.to_re "64"))))

(assert (< (+ (* 3 (str.to_int x)) (* (- 3) (str.to_int y))) 18))
(assert (<= (+ (* 3 (str.len x)) (* (- 9) (str.len y)) (* 10 (str.to_int x))) 3))

(check-sat)