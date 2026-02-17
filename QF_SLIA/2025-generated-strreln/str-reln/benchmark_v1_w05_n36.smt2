(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.+ (str.to_re "28")) (str.to_re "270")) (str.to_re "8"))))

(assert (<= (+ (- (str.len x)) (* 7 (str.to_int x))) 37))
(assert (> (* 3 (str.to_int x)) 69))
(assert (< (* (- 8) (str.len x)) 27))
(assert (< (* (- 9) (str.to_int x)) 74))

(check-sat)