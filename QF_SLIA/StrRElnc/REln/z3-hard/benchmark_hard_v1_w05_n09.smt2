(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "331") (re.+ (str.to_re "5"))) (str.to_re "54"))))

(assert (>= (+ (* 6 (str.len x)) (* 2 (str.to_int x))) 65))
(assert (<= (+ (* (- 3) (str.len x)) (* (- 3) (str.to_int x))) 27))
(assert (<= (* 5 (str.to_int x)) 47))

(check-sat)