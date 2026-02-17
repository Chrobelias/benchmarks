(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "43")) (re.++ (re.+ (str.to_re "3")) (str.to_re "66")))))

(assert (>= (+ (* 5 (str.len x)) (* 10 (str.to_int x))) 79))
(assert (< (+ (* (- 9) (str.len x)) (* 3 (str.to_int x))) 6))

(check-sat)