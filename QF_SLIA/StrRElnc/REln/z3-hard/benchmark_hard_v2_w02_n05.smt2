(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.+ (str.to_re "447")) (re.++ (re.range "1" "7") (str.to_re "61")))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "540")) (str.to_re "3"))))

(assert (> (+ (* 8 (str.len y)) (* (- 6) (str.to_int x))) 90))

(check-sat)