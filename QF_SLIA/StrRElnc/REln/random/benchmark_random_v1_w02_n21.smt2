(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "893")) (re.union (str.to_re "318") (str.to_re "343")))))

(assert (> (+ (* (- 2) (str.len x)) (* 7 (str.to_int x))) 25))

(check-sat)