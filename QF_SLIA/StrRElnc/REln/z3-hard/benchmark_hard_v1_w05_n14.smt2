(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "78")) (re.* (str.to_re "45")))))

(assert (> (+ (* 4 (str.len x)) (str.to_int x)) 40))
(assert (= (+ (* 9 (str.len x)) (* (- 7) (str.to_int x))) 21))
(assert (< (* (- 8) (str.to_int x)) 1))

(check-sat)