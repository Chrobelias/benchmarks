(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.+ (str.to_re "35")) (str.to_re "1"))))

(assert (> (* (- 7) (str.to_int x)) 88))
(assert (<= (* (- 5) (str.len x)) 83))
(assert (<= (* (- 9) (str.to_int x)) 74))
(assert (>= (* 10 (str.to_int x)) 62))
(assert (<= (* 7 (str.len x)) 30))

(check-sat)