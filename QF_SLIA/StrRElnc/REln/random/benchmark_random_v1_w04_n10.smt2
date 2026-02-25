(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "98")) (re.* (re.range "0" "4")))))

(assert (<= (- (str.len x)) 14))
(assert (>= (* 2 (str.len x)) 0))
(assert (= (+ (* 6 (str.len x)) (* 4 (str.to_int x))) 25))

(check-sat)