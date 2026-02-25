(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.+ (str.to_re "702")) (str.to_re "581"))))

(assert (>= (+ (* (- 7) (str.len x)) (* 7 (str.to_int x))) 21))
(assert (<= (* 10 (str.len x)) 97))
(assert (> (* 4 (str.len x)) 84))

(check-sat)