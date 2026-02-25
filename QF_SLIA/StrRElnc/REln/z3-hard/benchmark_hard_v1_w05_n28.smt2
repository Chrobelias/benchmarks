(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.+ (str.to_re "9")) (str.to_re "795")) (str.to_re "30"))))

(assert (< (* (- 7) (str.to_int x)) 28))
(assert (<= (str.len x) 85))
(assert (= (+ (* (- 2) (str.len x)) (* 6 (str.to_int x))) 12))
(assert (> (* 4 (str.len x)) 59))

(check-sat)