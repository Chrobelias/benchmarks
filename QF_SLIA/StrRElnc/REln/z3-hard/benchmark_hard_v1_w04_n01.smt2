(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (re.+ (str.to_re "49"))) (str.to_re "54"))))

(assert (>= (+ (* 7 (str.len x)) (* (- 6) (str.to_int x))) 42))
(assert (> (* 5 (str.len x)) 32))
(assert (> (* 8 (str.len x)) 97))

(check-sat)