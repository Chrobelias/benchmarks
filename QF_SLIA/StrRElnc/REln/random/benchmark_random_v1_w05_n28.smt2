(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "68")) (str.to_re "57"))))

(assert (<= (* 3 (str.to_int x)) 41))
(assert (<= (* 10 (str.to_int x)) 66))
(assert (>= (* 8 (str.to_int x)) 72))
(assert (= (+ (* (- 9) (str.len x)) (* (- 2) (str.to_int x))) 89))

(check-sat)