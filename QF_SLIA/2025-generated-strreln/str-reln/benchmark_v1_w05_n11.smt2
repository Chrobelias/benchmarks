(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (str.to_re "60") (re.* (str.to_re "24"))) (re.+ (str.to_re "221")))))

(assert (= (+ (str.len x) (* (- 8) (str.to_int x))) 23))
(assert (> (+ (* 5 (str.len x)) (* (- 2) (str.to_int x))) 76))
(assert (< (* (- 9) (str.to_int x)) 13))

(check-sat)