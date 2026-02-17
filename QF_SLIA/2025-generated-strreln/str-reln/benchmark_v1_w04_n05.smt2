(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (re.union (str.to_re "92") (str.to_re "38"))) (str.to_re "31"))))

(assert (<= (+ (* (- 3) (str.len x)) (* 5 (str.to_int x))) 1))
(assert (<= (+ (* 5 (str.len x)) (* (- 10) (str.to_int x))) 63))

(check-sat)