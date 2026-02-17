(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "26")) (re.++ (re.* (str.to_re "99")) (str.to_re "1")))))

(assert (< (* (- 8) (str.len x)) 46))
(assert (<= (+ (* (- 9) (str.len x)) (* 10 (str.to_int x))) 49))
(assert (> (* 2 (str.len x)) 75))
(assert (> (* 5 (str.len x)) 31))

(check-sat)