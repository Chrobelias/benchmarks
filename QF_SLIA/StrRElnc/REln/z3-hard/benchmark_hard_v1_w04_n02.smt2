(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "963") (re.* (re.union (re.* (str.to_re "12")) (str.to_re "58"))))))

(assert (<= (+ (* (- 9) (str.len x)) (* (- 3) (str.to_int x))) 50))
(assert (= (+ (* 4 (str.len x)) (* (- 2) (str.to_int x))) 36))

(check-sat)