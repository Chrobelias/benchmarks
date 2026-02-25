(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.++ (re.+ (str.to_re "62")) (str.to_re "415")) (re.* (str.to_re "883")))))

(assert (< (str.len x) 1))
(assert (> (* 4 (str.to_int x)) 6))
(assert (> (+ (* (- 10) (str.len x)) (* (- 3) (str.to_int x))) 62))

(check-sat)