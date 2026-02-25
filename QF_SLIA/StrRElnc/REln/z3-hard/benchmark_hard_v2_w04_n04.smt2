(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.++ (re.* (re.+ (str.to_re "6"))) (str.to_re "6")) (re.range "7" "9"))))
(assert (str.in_re x (re.* (re.++ (str.to_re "15") (re.* (re.+ (str.to_re "25")))))))

(assert (<= (+ (* (- 7) (str.to_int x)) (* (- 8) (str.to_int y))) 61))
(assert (> (+ (* 9 (str.len x)) (* 7 (str.len y))) 9))
(assert (> (+ (* 8 (str.len x)) (* 4 (str.len y)) (* (- 6) (str.to_int x))) 36))

(check-sat)