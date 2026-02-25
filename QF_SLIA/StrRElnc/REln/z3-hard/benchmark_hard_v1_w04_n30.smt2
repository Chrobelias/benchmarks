(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "246") (re.++ (re.* (re.range "0" "4")) (str.to_re "83")))))

(assert (< (+ (* (- 3) (str.len x)) (* 8 (str.to_int x))) 43))
(assert (<= (+ (* (- 3) (str.len x)) (- (str.to_int x))) 100))

(check-sat)