(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (re.* (re.* (str.to_re "5"))) (str.to_re "8")))))

(assert (<= (* (- 3) (str.to_int x)) 98))
(assert (> (+ (* 7 (str.len x)) (* 9 (str.to_int x))) 30))
(assert (>= (* (- 7) (str.len x)) 34))

(check-sat)