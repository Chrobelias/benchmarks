(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.++ (re.+ (str.to_re "807")) (re.* (re.range "7" "9"))) (str.to_re "278"))))

(assert (= (* (- 8) (str.len x)) 8))
(assert (>= (+ (* 6 (str.len x)) (* (- 5) (str.to_int x))) 3))
(assert (>= (* 9 (str.len x)) 89))
(assert (>= (* 6 (str.to_int x)) 37))

(check-sat)