(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (re.+ (re.* (str.to_re "3")))))))

(assert (> (* 6 (str.len x)) 89))
(assert (<= (str.to_int x) 50))
(assert (= (+ (str.len x) (* 5 (str.to_int x))) 83))
(assert (<= (* (- 3) (str.len x)) 51))

(check-sat)