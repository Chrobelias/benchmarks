(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "210")) (str.to_re "13"))))

(assert (< (+ (* (- 10) (str.len x)) (str.to_int x)) 91))
(assert (> (* 7 (str.len x)) 57))
(assert (< (* 9 (str.to_int x)) 69))
(assert (<= (* 7 (str.to_int x)) 64))

(check-sat)