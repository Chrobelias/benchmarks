(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "91")) (re.union (str.to_re "46") (str.to_re "65")))))

(assert (< (+ (* (- 5) (str.len x)) (* 7 (str.to_int x))) 59))
(assert (>= (* 3 (str.len x)) 29))
(assert (<= (+ (* (- 8) (str.len x)) (* 8 (str.to_int x))) 59))

(check-sat)