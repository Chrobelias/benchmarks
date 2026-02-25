(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (str.to_re "269"))))

(assert (>= (* 10 (str.to_int x)) 47))
(assert (> (* (- 7) (str.len x)) 21))
(assert (>= (* (- 2) (str.len x)) 97))
(assert (> (+ (* (- 3) (str.len x)) (- (str.to_int x))) 45))

(check-sat)