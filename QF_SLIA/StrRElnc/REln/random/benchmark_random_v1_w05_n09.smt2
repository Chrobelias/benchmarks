(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "136") (str.to_re "797")))))

(assert (<= (* 3 (str.to_int x)) 6))
(assert (> (* (- 8) (str.len x)) 11))
(assert (> (str.len x) 22))
(assert (>= (* (- 5) (str.to_int x)) 64))
(assert (< (* 4 (str.len x)) 57))

(check-sat)