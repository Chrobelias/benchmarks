(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.union (re.+ (str.to_re "39")) (str.to_re "3")) (str.to_re "8"))))

(assert (< (+ (* (- 10) (str.len x)) (* 9 (str.to_int x))) 17))

(check-sat)